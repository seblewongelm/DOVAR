using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class ReportYesNoMap : EntityTypeConfiguration<ReportYesNo>
    {
        public ReportYesNoMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            this.Property(t => t.Id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.YesNo)
                .IsRequired()
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("ReportYesNo");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.YesNo).HasColumnName("YesNo");
        }
    }
}
