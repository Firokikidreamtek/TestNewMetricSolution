using Entities;
using Microsoft.EntityFrameworkCore;

namespace NewMetricSolution.DB.DBContexts
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {
            Database.EnsureCreated();
        }
        public DbSet<Department> Departments { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Department>(entity =>
            {
                entity.HasKey(x => x.Id);
                entity.Property(x => x.Name);
                entity.HasOne(x => x.SuperiorDepartment)

                    .WithMany(x => x.SubDepartments)
                    .HasForeignKey(x => x.SuperiorDepartmentId)
                    .IsRequired(false)
                    .OnDelete(DeleteBehavior.Restrict);
            });

            #region Customer
            var firstHeadDepartment = new Department { Id = Guid.NewGuid(), Employees = 11, Name = "CustomerServiceDepartment" };
            modelBuilder.Entity<Department>().HasData(firstHeadDepartment);
            #region Sales
            var salesDepartment = new Department { Id = Guid.NewGuid(), Employees = 4, SuperiorDepartmentId = firstHeadDepartment.Id, Name = "SalesDepartment" };
            modelBuilder.Entity<Department>().HasData(salesDepartment);
            var retail = new Department() { Id = Guid.NewGuid(), Employees = 2, SuperiorDepartmentId = salesDepartment.Id, Name = "RetailDepartment" };
            var whole = new Department() { Id = Guid.NewGuid(), Employees = 2, SuperiorDepartmentId = salesDepartment.Id, Name = "WholeDepartment" };
            modelBuilder.Entity<Department>().HasData(whole);
            modelBuilder.Entity<Department>().HasData(retail);
            #endregion

            #region Logistic
            var logisticDepartment = new Department { Id = Guid.NewGuid(), Employees = 7, SuperiorDepartmentId = firstHeadDepartment.Id, Name = "LogisticDepartment" };
            modelBuilder.Entity<Department>().HasData(logisticDepartment);
            var delivery = new Department() { Id = Guid.NewGuid(), Employees = 5, SuperiorDepartmentId = logisticDepartment.Id, Name = "DeliveryDepartment" };
            var storage = new Department() { Id = Guid.NewGuid(), Employees = 2, SuperiorDepartmentId = logisticDepartment.Id, Name = "StorageDepartment" };
            modelBuilder.Entity<Department>().HasData(delivery);
            modelBuilder.Entity<Department>().HasData(storage);
            #endregion

            #endregion

            #region Production
            var productionDepartment = new Department { Id = Guid.NewGuid(), Employees = 7, Name = "ProductionDepartment" };
            modelBuilder.Entity<Department>().HasData(productionDepartment);
            var engineering = new Department() { Id = Guid.NewGuid(), Employees = 4,  SuperiorDepartmentId = productionDepartment.Id, Name = "EngineeringDepartment" };
            var qualityControl = new Department() { Id = Guid.NewGuid(), Employees = 2, SuperiorDepartmentId = productionDepartment.Id, Name = "QualityControlDepartment" };
            var purchasing = new Department() { Id = Guid.NewGuid(), Employees = 1, SuperiorDepartmentId = productionDepartment.Id, Name = "PurchasingDepartment" };
            modelBuilder.Entity<Department>().HasData(engineering);
            modelBuilder.Entity<Department>().HasData(qualityControl);
            modelBuilder.Entity<Department>().HasData(purchasing);
            #endregion

            #region Accounting
            var accountingDepartment = new Department { Id = Guid.NewGuid(), Employees = 2, Name = "AccountingDepartment" };
            modelBuilder.Entity<Department>().HasData(accountingDepartment);
            #endregion

        }

    }
}
