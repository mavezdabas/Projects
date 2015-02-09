﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DummyDataCreator
{
    class Program
    {
        static void Main(string[] args)
        {
            EquityTradingDBEntities ctx = new EquityTradingDBEntities();
            int orderid = 1;

            Console.WriteLine("*********NOTICE*********\n This is a random data generator. Keeping certain parameters constant, the entire data is generated at random.\n Please empty all your tables from before and use this program to fill them with data once again.\n Press Enter To continue \n");
            Console.Read();
            //Status TABLE
            Status newStatus = new Status();
            newStatus.StatusID = 1;
            newStatus.StatusName = "NEW";
            ctx.Status.AddObject(newStatus);

            newStatus = new Status();
            newStatus.StatusID = 2;
            newStatus.StatusName = "OPEN";
            ctx.Status.AddObject(newStatus);
            //Adding To Securities Table
            String[] SecName = {"TataConsultancyServices",
                                   "Google",
                                   "Facebook",
                                   "LinkdIn",
                                   "Youtube",
                                   "Microsoft",
                                   "Wipro",
                                   "Reliance",
                                   "Tata Steel",
                                   "Infosys",
                                   "Sapient",
                                   "Amdocs",
                                   "Ernst & Young",
                                   "Deloitte",
                                   "SmartCube"};
            String[] SecSymbol = {"TCS",
                                    "G+",
                                    "FB",
                                    "LKDN",
                                    "YT",
                                    "MS",
                                    "WPR",
                                    "REL",
                                    "TATASTL",
                                    "INF",
                                    "SPNT",
                                    "AMD",
                                    "ENY",
                                    "DEL",
                                    "SMTCB"
                                 };

            decimal[] SecLastTraded = { 214.253m, 21.23m, 4551.23m, 4487.21m, 1124.12m, 114.21m, 225.23m, 114.14m, 115.25m, 441.26m, 118.26m, 748.25m, 445.23m, 474.58m, 996.25m };


            for (int x = 1; x <= 15; x++)
            {
                Security newSecurity = new Security();
                newSecurity.SecurityID = x;
                newSecurity.SecurityName = SecName[x - 1];
                newSecurity.SecuritySymbol = SecSymbol[x - 1];
                newSecurity.LastTradedPrice = SecLastTraded[x - 1];
                ctx.Securities.AddObject(newSecurity);
            }
            //
            
            //ADDing Clients

            String[] names = {"Ross","Rachel","Monica","Sheldon","Leonard","Chandler","Joey","Phoebe","Walter","Jesse","Stanley","Russel",
                             "Arnold","Jason","Freddy","Heath","Charlie"};
            for (int x = 0; x < 17; x++)
            {
                Client newClient = new Client();
                newClient.ClientID = x + 1;
                newClient.ClientName = names[x];

                ctx.Clients.AddObject(newClient);
            }
            
           
            //Creating Portfolios

            for (int x = 0; x < 17; x++)
            {
                Portfolio newClient = new Portfolio();
                newClient.ClientID = x + 1;
                newClient.PortfolioID = x + 1; ;
                newClient.PortfolioName = names[x];
                ctx.Portfolios.AddObject(newClient);
            }

            //Adding UserRoles
            UserRole newUserRole = new UserRole();
            newUserRole.RoleID = 1;
            newUserRole.RoleName = "PORTFOLIO_MANAGER";
            ctx.UserRoles.AddObject(newUserRole);
            newUserRole = new UserRole();
            newUserRole.RoleName = "EQUITY_TRADER";
            newUserRole.RoleID = 2;
            ctx.UserRoles.AddObject(newUserRole);


            //AddingUsers
            for (int x = 1; x < 50; x++)
            {
                User newUser = new User();
                newUser.UserID = x;
                int xx = x % 17;
                newUser.Name = names[xx];
                newUser.UserName = names[xx] + "@gmail.com";
                if (x % 2 == 0) newUser.RoleID = 1;
                else newUser.RoleID = 2;
                newUser.Password = "123";

                ctx.Users.AddObject(newUser);
            }
            
            
            //Creating Blocks
            Random r = new Random();
            Random s = new Random();
            Random totalquant = new Random();
            for (int i = 1; i <= 100; i++)
            {
                Block block = new Block();
                block.BlockID = i;
                if (i % 2 == 0) block.BlockSide = "SELL";
                else block.BlockSide = "BUY";

                block.TraderID = 1;

                if (i % 3 == 0) block.BlockStatus = 1;
                else block.BlockStatus = 2;
                int xx = r.Next(0, 15);
                int rr = r.Next(0, 11);
                int ss = r.Next(0, 6);
                double LimitPrice = Convert.ToDouble(SecLastTraded[xx]) + (Convert.ToDouble(SecLastTraded[xx])) * (Convert.ToDouble(rr) / 1.332243) / 100;

                double StopPrice = Convert.ToDouble(SecLastTraded[xx]) - (Convert.ToDouble(SecLastTraded[xx])) * (Convert.ToDouble(ss) / 1.332243) / 100; ;
                block.LimitPrice = Convert.ToDecimal(LimitPrice);
                block.StopPrice = Convert.ToDecimal(StopPrice);


                block.TotalQuantity = 0;
                block.OpenQuantity = 0;
                block.ExecutedQuantity = 0;
                block.SecurityID = xx+1;



                //Creating Orders
                int rrr = r.Next(5, 101);
                for (int y = 1; y <= rrr; y++)
                {
                    Order newOrder = new Order();
                    newOrder.BlockID = i;
                    newOrder.OrderID = orderid;
                    orderid++;
                    newOrder.StatusID = 2;
                    ss = r.Next(1, 18);
                    newOrder.ClientID = ss;
                    newOrder.PortfolioID = ss;

                    int securityRandom = r.Next(0, 15);
                    double randompricediffernce = Convert.ToDouble(r.Next(-100, 100)) / 12.32323;
                    newOrder.TransactionPrice = SecLastTraded[securityRandom] + Convert.ToDecimal(randompricediffernce);
                    newOrder.SecurityID = block.SecurityID;
                    newOrder.TransactionTime = DateTime.Now;
                    newOrder.AccountType = "Permanent";
                    newOrder.Notify = true;
                    newOrder.Notes = "Important ! Random Data Created. Please Do not be serious.";

                    rr = r.Next(0, 11);
                    ss = r.Next(0, 6);
                    LimitPrice = Convert.ToDouble(SecLastTraded[xx]) + (Convert.ToDouble(SecLastTraded[xx])) * (Convert.ToDouble(rr) / 1.332243) / 100;

                    StopPrice = Convert.ToDouble(SecLastTraded[xx]) - (Convert.ToDouble(SecLastTraded[xx])) * (Convert.ToDouble(ss) / 1.332243) / 100; ;
                    newOrder.LimitPrice = Convert.ToDecimal(LimitPrice);
                    newOrder.StopPrice = Convert.ToDecimal(StopPrice);

                    newOrder.TotalQuantity = totalquant.Next(50, 500);
                    newOrder.OpenQuantity = totalquant.Next(0, newOrder.TotalQuantity);
                    newOrder.AllocatedQuantity = newOrder.TotalQuantity - newOrder.OpenQuantity;
                    block.TotalQuantity = block.TotalQuantity + newOrder.TotalQuantity;
                    block.OpenQuantity = block.OpenQuantity + newOrder.OpenQuantity;
                    block.ExecutedQuantity = block.ExecutedQuantity + newOrder.AllocatedQuantity;
                    newOrder.Side = block.BlockSide;
                    newOrder.TraderID = r.Next(1, 10);
                    newOrder.OrderType = "SELL IT FAST";

                    newOrder.ManagerID = r.Next(1, 15);
                    newOrder.OrderQualifier = "DDEA ?? dDDEA !!@#!! ";

                    ctx.Orders.AddObject(newOrder);
                }

                ctx.Blocks.AddObject(block);
            }

           // ctx.SaveChanges();

            int rrrr = r.Next(5, 101);
            for (int y = 1; y <= 1000; y++)
            {
                int xx = r.Next(0, 15);
                Order newOrder = new Order();
                newOrder.BlockID = null;
                newOrder.OrderID = orderid;
                orderid++;
                newOrder.StatusID = 2;
                int ss = r.Next(1, 18);
                newOrder.ClientID = ss;
                newOrder.PortfolioID = ss;

                int securityRandom = r.Next(0, 15);
                double randompricediffernce = Convert.ToDouble(r.Next(-100, 100)) / 12.32323;
                newOrder.TransactionPrice = SecLastTraded[securityRandom] + Convert.ToDecimal(randompricediffernce);
                newOrder.SecurityID = xx + 1;
                newOrder.TransactionTime = DateTime.Now;
                newOrder.AccountType = "Permanent";
                newOrder.Notify = true;
                newOrder.Notes = "Important ! Random Data Created. Please Do not be serious.";

                int rr = r.Next(0, 11);
                ss = r.Next(0, 6);
                double LimitPrice = Convert.ToDouble(SecLastTraded[xx]) + (Convert.ToDouble(SecLastTraded[xx])) * (Convert.ToDouble(rr) / 1.332243) / 100;

                double StopPrice = Convert.ToDouble(SecLastTraded[xx]) - (Convert.ToDouble(SecLastTraded[xx])) * (Convert.ToDouble(ss) / 1.332243) / 100; ;
                newOrder.LimitPrice = Convert.ToDecimal(LimitPrice);
                newOrder.StopPrice = Convert.ToDecimal(StopPrice);

                newOrder.TotalQuantity = totalquant.Next(50, 500);
                newOrder.OpenQuantity = totalquant.Next(0, newOrder.TotalQuantity);
                newOrder.AllocatedQuantity = newOrder.TotalQuantity - newOrder.OpenQuantity;

                if (y % 2 == 0) newOrder.Side = "SELL";
                else newOrder.Side = "BUY";
                newOrder.TraderID = r.Next(1, 10);
                newOrder.OrderType = "SELL IT FAST";

                newOrder.ManagerID = r.Next(1, 15);
                newOrder.OrderQualifier = "DDEA ?? dDDEA !!@#!! ";

                ctx.Orders.AddObject(newOrder);
            }

            

            ctx.SaveChanges();
            Console.Read();
        }
    }
}

