using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace NewMetricSolution.DB.Migrations
{
    public partial class Init : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Departments",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uuid", nullable: false),
                    Name = table.Column<string>(type: "text", nullable: true),
                    SuperiorDepartmentId = table.Column<Guid>(type: "uuid", nullable: true),
                    Employees = table.Column<int>(type: "integer", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Departments", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Departments_Departments_SuperiorDepartmentId",
                        column: x => x.SuperiorDepartmentId,
                        principalTable: "Departments",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.InsertData(
                table: "Departments",
                columns: new[] { "Id", "Employees", "Name", "SuperiorDepartmentId" },
                values: new object[,]
                {
                    { new Guid("1a505ab5-9318-46d4-b0b1-400a0ecb3020"), 7, "ProductionDepartment", null },
                    { new Guid("b42b2010-72ef-4467-ab90-58594edc74e4"), 2, "AccountingDepartment", null },
                    { new Guid("e03e3dae-e1f0-400f-9714-521733b2bbbb"), 11, "CustomerServiceDepartment", null }
                });

            migrationBuilder.InsertData(
                table: "Departments",
                columns: new[] { "Id", "Employees", "Name", "SuperiorDepartmentId" },
                values: new object[,]
                {
                    { new Guid("0d09f17b-490f-4049-9ef2-388610239323"), 1, "PurchasingDepartment", new Guid("1a505ab5-9318-46d4-b0b1-400a0ecb3020") },
                    { new Guid("1ffa5a83-55f7-49d6-8eb3-2da6c7bbcdb2"), 4, "EngineeringDepartment", new Guid("1a505ab5-9318-46d4-b0b1-400a0ecb3020") },
                    { new Guid("9543dbb2-afec-4b45-8c3e-6970f03d2ffa"), 7, "LogisticDepartment", new Guid("e03e3dae-e1f0-400f-9714-521733b2bbbb") },
                    { new Guid("aaa37af3-14af-4712-ad94-f4907d4211b0"), 4, "SalesDepartment", new Guid("e03e3dae-e1f0-400f-9714-521733b2bbbb") },
                    { new Guid("b099f8f1-0e66-4532-aeb7-7a2bcae998e7"), 2, "QualityControlDepartment", new Guid("1a505ab5-9318-46d4-b0b1-400a0ecb3020") }
                });

            migrationBuilder.InsertData(
                table: "Departments",
                columns: new[] { "Id", "Employees", "Name", "SuperiorDepartmentId" },
                values: new object[,]
                {
                    { new Guid("75f2965b-bb94-4813-abac-2c41d5f0e992"), 2, "StorageDepartment", new Guid("9543dbb2-afec-4b45-8c3e-6970f03d2ffa") },
                    { new Guid("a22879a1-15a8-4dba-b7cd-ed546ce46990"), 2, "WholeDepartment", new Guid("aaa37af3-14af-4712-ad94-f4907d4211b0") },
                    { new Guid("b5597a5b-117c-4ce8-b7b1-ee28b4e4ebf8"), 2, "RetailDepartment", new Guid("aaa37af3-14af-4712-ad94-f4907d4211b0") },
                    { new Guid("d2e8e471-d120-43e3-99f5-a29dbcb2e2e8"), 5, "DeliveryDepartment", new Guid("9543dbb2-afec-4b45-8c3e-6970f03d2ffa") }
                });

            migrationBuilder.CreateIndex(
                name: "IX_Departments_SuperiorDepartmentId",
                table: "Departments",
                column: "SuperiorDepartmentId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Departments");
        }
    }
}
