using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class ReportGeneraterMap : EntityTypeConfiguration<ReportGenerater>
    {
        public ReportGeneraterMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            this.Property(t => t.ReportTitle)
                .HasMaxLength(50);

            this.Property(t => t.ReportFileName)
                .HasMaxLength(50);

            this.Property(t => t.ViewName)
                .HasMaxLength(50);

            this.Property(t => t.DateFrom)
                .HasMaxLength(50);

            this.Property(t => t.DateTo)
                .HasMaxLength(50);

            this.Property(t => t.Parameter1)
                .HasMaxLength(50);

            this.Property(t => t.Parameter2)
                .HasMaxLength(50);

            this.Property(t => t.Parameter3)
                .HasMaxLength(50);

            this.Property(t => t.Parameter4)
                .HasMaxLength(50);

            this.Property(t => t.Parameter5)
                .HasMaxLength(50);

            this.Property(t => t.Parameter6)
                .HasMaxLength(50);

            this.Property(t => t.Parameter7)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("ReportGenerater");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.ReportTitle).HasColumnName("ReportTitle");
            this.Property(t => t.ReportFileName).HasColumnName("ReportFileName");
            this.Property(t => t.ViewName).HasColumnName("ViewName");
            this.Property(t => t.DateFrom).HasColumnName("DateFrom");
            this.Property(t => t.DateTo).HasColumnName("DateTo");
            this.Property(t => t.Parameter1).HasColumnName("Parameter1");
            this.Property(t => t.Parameter2).HasColumnName("Parameter2");
            this.Property(t => t.Parameter3).HasColumnName("Parameter3");
            this.Property(t => t.Parameter4).HasColumnName("Parameter4");
            this.Property(t => t.Parameter5).HasColumnName("Parameter5");
            this.Property(t => t.Parameter6).HasColumnName("Parameter6");
            this.Property(t => t.Parameter7).HasColumnName("Parameter7");
        }
    }
}
