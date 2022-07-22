using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class RoleOperationMap : EntityTypeConfiguration<RoleOperation>
    {
        public RoleOperationMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            // Table & Column Mappings
            this.ToTable("RoleOperation");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.RoleId).HasColumnName("RoleId");
            this.Property(t => t.OperationId).HasColumnName("OperationId");

            // Relationships
            this.HasRequired(t => t.Operation)
                .WithMany(t => t.RoleOperations)
                .HasForeignKey(d => d.OperationId);
            this.HasRequired(t => t.Role)
                .WithMany(t => t.RoleOperations)
                .HasForeignKey(d => d.RoleId);

        }
    }
}
