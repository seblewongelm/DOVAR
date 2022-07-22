using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class View_2Map : EntityTypeConfiguration<View_2>
    {
        public View_2Map()
        {
            // Primary Key
            this.HasKey(t => new { t.LocationName, t.Id });

            // Properties
            this.Property(t => t.LocationName)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.Id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            // Table & Column Mappings
            this.ToTable("View_2");
            this.Property(t => t.Address).HasColumnName("Address");
            this.Property(t => t.LocationName).HasColumnName("LocationName");
            this.Property(t => t.Id).HasColumnName("Id");
        }
    }
}
