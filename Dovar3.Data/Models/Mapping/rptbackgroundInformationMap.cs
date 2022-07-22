using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class rptbackgroundInformationMap : EntityTypeConfiguration<rptbackgroundInformation>
    {
        public rptbackgroundInformationMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Id, t.Year, t.LocationId });

            // Properties
            this.Property(t => t.Id)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Year)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Month)
                .HasMaxLength(50);

            this.Property(t => t.Region)
                .HasMaxLength(100);

            this.Property(t => t.Zone)
                .HasMaxLength(100);

            this.Property(t => t.Woreda)
                .HasMaxLength(100);

            this.Property(t => t.IsReortAccepted)
                .HasMaxLength(10);

            this.Property(t => t.ReportSenderName)
                .HasMaxLength(100);

            this.Property(t => t.QualificationName)
                .HasMaxLength(50);

            this.Property(t => t.LocationId)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.PublicbodyName)
                .HasMaxLength(100);

            this.Property(t => t.ReportSenderPhone)
                .HasMaxLength(30);

            this.Property(t => t.CreatedBy)
                .HasMaxLength(50);

            this.Property(t => t.ApprovedBy)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("rptbackgroundInformation");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.Year).HasColumnName("Year");
            this.Property(t => t.Month).HasColumnName("Month");
            this.Property(t => t.Region).HasColumnName("Region");
            this.Property(t => t.Zone).HasColumnName("Zone");
            this.Property(t => t.Woreda).HasColumnName("Woreda");
            this.Property(t => t.CreatedDate).HasColumnName("CreatedDate");
            this.Property(t => t.IsReortAccepted).HasColumnName("IsReortAccepted");
            this.Property(t => t.Control).HasColumnName("Control");
            this.Property(t => t.Prophylaxis).HasColumnName("Prophylaxis");
            this.Property(t => t.ReportSenderName).HasColumnName("ReportSenderName");
            this.Property(t => t.QualificationName).HasColumnName("QualificationName");
            this.Property(t => t.LocationId).HasColumnName("LocationId");
            this.Property(t => t.Ccomment).HasColumnName("Ccomment");
            this.Property(t => t.PublicbodyName).HasColumnName("PublicbodyName");
            this.Property(t => t.ApprovedDate).HasColumnName("ApprovedDate");
            this.Property(t => t.ReportSenderPhone).HasColumnName("ReportSenderPhone");
            this.Property(t => t.CreatedBy).HasColumnName("CreatedBy");
            this.Property(t => t.ApprovedBy).HasColumnName("ApprovedBy");
        }
    }
}
