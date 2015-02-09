﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace ExecutionTraderDataAccessLayer
{
    public class ExecutionTraderDAL:IExecutionTraderDAL
    {
        
            public void CreateBlock(Block blockToBeCreated,List<Order> selectedOrders)
            {
                using (EquityTradingDBEntities ctx = new EquityTradingDBEntities())
                {
                   
                    ctx.Blocks.AddObject(blockToBeCreated);
                    ctx.SaveChanges();
                   foreach(Order order in selectedOrders)
                   {
                       order.BlockID=blockToBeCreated.BlockID;
                      // ctx.Orders.Attach(order);
                       //ctx.ObjectStateManager.ChangeObjectState(order, EntityState.Modified);
                       //ctx.SaveChanges();
                   }
                   UpdateOrders(selectedOrders);
                  
                }
            }

            //public bool CheckSameSymbolAndSide(List<Order> orders)
            //{
            //    int count=orders.Count();
            //    using (EquityTradingDBEntities2 ctx = new EquityTradingDBEntities2())
            //    {
            //        int securityId = orders[0].SecurityID;
            //        string side=orders[0].Side;

            //        var result = (from selectedOrder in ctx.Orders
            //                      where selectedOrder.SecurityID == securityId && selectedOrder.Side.Equals(side)
            //                      select selectedOrder).Count();
            //        if (result == count)
            //        { return true; }
            //        return false;

            //      }


            //}//T//To be deleted

            public void EditBlock(Block blockToBeEdited)
            {
                using (EquityTradingDBEntities ctx = new EquityTradingDBEntities())
                {
                    ctx.Blocks.Attach(blockToBeEdited);
                    ctx.ObjectStateManager.ChangeObjectState(blockToBeEdited, EntityState.Modified);
                    ctx.SaveChanges();
                }
            }

            public void DeleteBlock(Block blockToBeDeleted)
            {
                using (EquityTradingDBEntities ctx = new EquityTradingDBEntities())
                {
                    ctx.Blocks.Attach(blockToBeDeleted);
                    ctx.Blocks.DeleteObject(blockToBeDeleted);
                    ctx.SaveChanges();
                }
            }

            public List<Block> DisplayBlocks()
            {
                using (EquityTradingDBEntities ctx = new EquityTradingDBEntities())
                {
                    var blocks = from block in ctx.Blocks.Include("Security").Include("Orders").Include("Orders.Status").Include("Orders.User") select block;
                    return blocks.ToList();
                }
            }

            public Block GetBlockByBlockID(int blockId)
            {
                using (EquityTradingDBEntities ctx = new EquityTradingDBEntities())
                {
                    var extractedBlock = (from block in ctx.Blocks
                                          where block.BlockID == blockId
                                          select block).FirstOrDefault();
                    return extractedBlock;

                }
            }

            public List<Block> GetBlocksBySecurityIDAndSide(int securityID, string side)
            {
                using (EquityTradingDBEntities ctx = new EquityTradingDBEntities())
                {
                    var blocks = from block in ctx.Blocks
                                 where block.SecurityID == securityID && block.BlockSide == side
                                 select block;
                    return blocks.ToList();
                }
            }
            public List<Block> GetFilteredBlocks(int blockID, int securityID, int blockStatus, string blockSide)
            {
                using (EquityTradingDBEntities ctx = new EquityTradingDBEntities())
                {
                    var blocks = from block in ctx.Blocks.Include("Security")
                                 where ((blockID != 0) ? block.BlockID == blockID : true)
                                 && ((blockStatus != 0) ? block.BlockStatus == blockStatus : true)
                                 && ((securityID != 0) ? block.SecurityID == securityID : true)
                                 && ((blockSide != null) ? block.BlockSide == blockSide : true)
                                 select block;
                    return blocks.ToList();
                }
            }


            public Order GetOrderByOrderID(int orderId)
            {
                using (EquityTradingDBEntities ctx = new EquityTradingDBEntities())
                {
                    var extractedOrder = (from order in ctx.Orders
                                          where order.OrderID == orderId
                                          select order).FirstOrDefault();
                    return extractedOrder;

                }
            }

            public List<Order> DisplayOrders()
            {
                using (EquityTradingDBEntities ctx = new EquityTradingDBEntities())
                {
                    var orders = from order in ctx.Orders select order;
                    return orders.ToList();
                }
            }

            public void UpdateOrders(List<Order> orders)
            {
                foreach (var order in orders)
                {
                    using (EquityTradingDBEntities ctx = new EquityTradingDBEntities())
                    {
                        ctx.Orders.Attach(order);
                        ctx.ObjectStateManager.ChangeObjectState(order, EntityState.Modified);
                        ctx.SaveChanges();
                    }
                }
            }

            public List<Order> DisplayOpenOrders()
            {
                using (EquityTradingDBEntities ctx = new EquityTradingDBEntities())
                {
                    var openOrders = from order in ctx.Orders.Include("User").Include("Security").Include("Block").Include("Status")
                                     where /*order.StatusID==2  && */ order.BlockID==null//2 for open orders
                                     select order;
                    return openOrders.ToList();
                }
            }

            public List<OrderAllocation> DisplayAllocatedOrders()
            {
                using (EquityTradingDBEntities ctx = new EquityTradingDBEntities())
                {
                    var allocatedOrders = from order in ctx.OrderAllocations.Include("Order").Include("Order.Status").Include("Order.User").Include("Order.Security") select order;
                    return allocatedOrders.ToList();
                }
            }

            public List<ExecutedBlock> DisplayExecutedBlocks()
            {
                using (EquityTradingDBEntities ctx = new EquityTradingDBEntities())
                {
                    var executedBlocks = from block in ctx.ExecutedBlocks.Include("OrderAllocations").Include("Block").
                                             Include("Block.Security").Include("OrderAllocations.Order").Include("OrderAllocations.Order.Status").Include("OrderAllocations.Order.User")
                                         select block;
                    return executedBlocks.ToList();
                }
            }



            public void CreateProposedBlock(ProposedBlock proposedBlockToBeCreated)
            {
                using (EquityTradingDBEntities ctx = new EquityTradingDBEntities())
                {
                    ctx.ProposedBlocks.AddObject(proposedBlockToBeCreated);
                    ctx.SaveChanges();


                }
            }

            public void EditProposedBlock(ProposedBlock proposedBlockToBeEdited)
            {
                using (EquityTradingDBEntities ctx = new EquityTradingDBEntities())
                {
                    ctx.ProposedBlocks.Attach(proposedBlockToBeEdited);
                    ctx.ObjectStateManager.ChangeObjectState(proposedBlockToBeEdited, EntityState.Modified);
                    ctx.SaveChanges();
                }
            }

            public void DeleteProposedBlock(ProposedBlock proposedBlockToBeDeleted)
            {
                using (EquityTradingDBEntities ctx = new EquityTradingDBEntities())
                {
                    ctx.ProposedBlocks.Attach(proposedBlockToBeDeleted);
                    ctx.ProposedBlocks.DeleteObject(proposedBlockToBeDeleted);
                    ctx.SaveChanges();
                }
            }

            public ProposedBlock GetProposedBlockByProposedBlockID(int proposedBlockId)
            {
                using (EquityTradingDBEntities ctx = new EquityTradingDBEntities())
                {
                    var extractedProposedBlock = (from proposedBlock in ctx.ProposedBlocks
                                                  where proposedBlock.ProposedBlockID == proposedBlockId
                                                  select proposedBlock).FirstOrDefault();
                    return extractedProposedBlock;

                }
            }



            public bool CheckSameSymbolAndSide(List<Order> orders)
            {
                throw new NotImplementedException();
            }

            public List<ProposedBlock> DisplayProposedBlocks()
            {
                throw new NotImplementedException();
            }

          public int GetMaxBlockId()
            {
                using (EquityTradingDBEntities ctx = new EquityTradingDBEntities())
                {
                    var blocks = (from block in ctx.Blocks
                                  select block).ToList();
                    if (blocks.Count > 0)
                        return blocks.Max(b=>b.BlockID);
                    else
                        return 0;
                }
            }

            public void GetSymbolFromSecurityId(int securityId)
            {
                using (EquityTradingDBEntities ctx = new EquityTradingDBEntities())
                {
                    var symbol = from security in ctx.Securities
                                 where security.SecurityID == securityId
                                 select security.SecuritySymbol;

                }
            }
            public List<Security> GetAllSecurities()                  //new Func
            {
                using (EquityTradingDBEntities ctx = new EquityTradingDBEntities())
                {
                    var securities = from security in ctx.Securities
                                     select security;
                    return securities.ToList();
                }
            }

            public void GetStatusFromStatusId(int statusId)
            {
                using (EquityTradingDBEntities ctx = new EquityTradingDBEntities())
                {
                    var status = from blockStatus in ctx.Status
                                 where blockStatus.StatusID == statusId
                                 select blockStatus.StatusName;
                }
            }


           
    }
}
