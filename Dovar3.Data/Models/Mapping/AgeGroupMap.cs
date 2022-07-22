using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class AgeGroupMap : EntityTypeConfiguration<AgeGroup>
    {
        public AgeGroupMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            this.Property(t => t.AgeGroupName)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("AgeGroup");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.AgeGroupName).HasColumnName("AgeGroupName");
        }
    }
}
