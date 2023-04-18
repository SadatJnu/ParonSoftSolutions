namespace ParonSoftSolutions.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Initial : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Employee",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(maxLength: 100),
                        JoinDate = c.DateTime(),
                        Designation = c.String(maxLength: 100),
                        Salary = c.Decimal(precision: 18, scale: 2),
                        IsBonusAdded = c.Boolean(),
                    })
                .PrimaryKey(t => t.Id);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Employee");
        }
    }
}
