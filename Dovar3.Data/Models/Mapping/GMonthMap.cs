using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class GMonthMap : EntityTypeConfiguration<GMonth>
    {
        public GMonthMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            this.Property(t => t.Id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.MonthName)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("GMonth");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.MonthName).HasColumnName("MonthName");
        }
    }
}
