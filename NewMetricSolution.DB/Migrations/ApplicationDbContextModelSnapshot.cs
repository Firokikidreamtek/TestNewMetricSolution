﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using NewMetricSolution.DB.DBContexts;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;

#nullable disable

namespace NewMetricSolution.DB.Migrations
{
    [DbContext(typeof(ApplicationDbContext))]
    partial class ApplicationDbContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "6.0.16")
                .HasAnnotation("Relational:MaxIdentifierLength", 63);

            NpgsqlModelBuilderExtensions.UseIdentityByDefaultColumns(modelBuilder);

            modelBuilder.Entity("Entities.Department", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");

                    b.Property<int>("Employees")
                        .HasColumnType("integer");

                    b.Property<string>("Name")
                        .HasColumnType("text");

                    b.Property<Guid?>("SuperiorDepartmentId")
                        .HasColumnType("uuid");

                    b.HasKey("Id");

                    b.HasIndex("SuperiorDepartmentId");

                    b.ToTable("Departments");

                    b.HasData(
                        new
                        {
                            Id = new Guid("e03e3dae-e1f0-400f-9714-521733b2bbbb"),
                            Employees = 11,
                            Name = "CustomerServiceDepartment"
                        },
                        new
                        {
                            Id = new Guid("aaa37af3-14af-4712-ad94-f4907d4211b0"),
                            Employees = 4,
                            Name = "SalesDepartment",
                            SuperiorDepartmentId = new Guid("e03e3dae-e1f0-400f-9714-521733b2bbbb")
                        },
                        new
                        {
                            Id = new Guid("a22879a1-15a8-4dba-b7cd-ed546ce46990"),
                            Employees = 2,
                            Name = "WholeDepartment",
                            SuperiorDepartmentId = new Guid("aaa37af3-14af-4712-ad94-f4907d4211b0")
                        },
                        new
                        {
                            Id = new Guid("b5597a5b-117c-4ce8-b7b1-ee28b4e4ebf8"),
                            Employees = 2,
                            Name = "RetailDepartment",
                            SuperiorDepartmentId = new Guid("aaa37af3-14af-4712-ad94-f4907d4211b0")
                        },
                        new
                        {
                            Id = new Guid("9543dbb2-afec-4b45-8c3e-6970f03d2ffa"),
                            Employees = 7,
                            Name = "LogisticDepartment",
                            SuperiorDepartmentId = new Guid("e03e3dae-e1f0-400f-9714-521733b2bbbb")
                        },
                        new
                        {
                            Id = new Guid("d2e8e471-d120-43e3-99f5-a29dbcb2e2e8"),
                            Employees = 5,
                            Name = "DeliveryDepartment",
                            SuperiorDepartmentId = new Guid("9543dbb2-afec-4b45-8c3e-6970f03d2ffa")
                        },
                        new
                        {
                            Id = new Guid("75f2965b-bb94-4813-abac-2c41d5f0e992"),
                            Employees = 2,
                            Name = "StorageDepartment",
                            SuperiorDepartmentId = new Guid("9543dbb2-afec-4b45-8c3e-6970f03d2ffa")
                        },
                        new
                        {
                            Id = new Guid("1a505ab5-9318-46d4-b0b1-400a0ecb3020"),
                            Employees = 7,
                            Name = "ProductionDepartment"
                        },
                        new
                        {
                            Id = new Guid("1ffa5a83-55f7-49d6-8eb3-2da6c7bbcdb2"),
                            Employees = 4,
                            Name = "EngineeringDepartment",
                            SuperiorDepartmentId = new Guid("1a505ab5-9318-46d4-b0b1-400a0ecb3020")
                        },
                        new
                        {
                            Id = new Guid("b099f8f1-0e66-4532-aeb7-7a2bcae998e7"),
                            Employees = 2,
                            Name = "QualityControlDepartment",
                            SuperiorDepartmentId = new Guid("1a505ab5-9318-46d4-b0b1-400a0ecb3020")
                        },
                        new
                        {
                            Id = new Guid("0d09f17b-490f-4049-9ef2-388610239323"),
                            Employees = 1,
                            Name = "PurchasingDepartment",
                            SuperiorDepartmentId = new Guid("1a505ab5-9318-46d4-b0b1-400a0ecb3020")
                        },
                        new
                        {
                            Id = new Guid("b42b2010-72ef-4467-ab90-58594edc74e4"),
                            Employees = 2,
                            Name = "AccountingDepartment"
                        });
                });

            modelBuilder.Entity("Entities.Department", b =>
                {
                    b.HasOne("Entities.Department", "SuperiorDepartment")
                        .WithMany("SubDepartments")
                        .HasForeignKey("SuperiorDepartmentId")
                        .OnDelete(DeleteBehavior.Restrict);

                    b.Navigation("SuperiorDepartment");
                });

            modelBuilder.Entity("Entities.Department", b =>
                {
                    b.Navigation("SubDepartments");
                });
#pragma warning restore 612, 618
        }
    }
}
