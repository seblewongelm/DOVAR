using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace Dovar3.Data.Models.Mapping
{
    public class MonthlyReportMap : EntityTypeConfiguration<MonthlyReport>
    {
        public MonthlyReportMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            this.Property(t => t.ReportSenderName)
                .HasMaxLength(100);

            this.Property(t => t.ReportSenderPhone)
                .HasMaxLength(30);

            // Table & Column Mappings
            this.ToTable("MonthlyReport");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.ReportMonth).HasColumnName("ReportMonth");
            this.Property(t => t.ReportYear).HasColumnName("ReportYear");
            this.Property(t => t.Status).HasColumnName("Status");
            this.Property(t => t.Region).HasColumnName("Region");
            this.Property(t => t.Zone).HasColumnName("Zone");
            this.Property(t => t.Woreda).HasColumnName("Woreda");
            this.Property(t => t.Ccomment).HasColumnName("Ccomment");
            this.Property(t => t.CreatedBy).HasColumnName("CreatedBy");
            this.Property(t => t.CreatedDate).HasColumnName("CreatedDate");
            this.Property(t => t.LastModifiedBy).HasColumnName("LastModifiedBy");
            this.Property(t => t.LastModifiedDate).HasColumnName("LastModifiedDate");
            this.Property(t => t.ApprovedBy).HasColumnName("ApprovedBy");
            this.Property(t => t.ApprovedDate).HasColumnName("ApprovedDate");
            this.Property(t => t.VerifiedBy).HasColumnName("VerifiedBy");
            this.Property(t => t.VerifiedDate).HasColumnName("VerifiedDate");
            this.Property(t => t.IsReportAccepted).HasColumnName("IsReportAccepted");
            this.Property(t => t.ReportSenderName).HasColumnName("ReportSenderName");
            this.Property(t => t.ReportSenderPhone).HasColumnName("ReportSenderPhone");
            this.Property(t => t.ReportSenderQualificationId).HasColumnName("ReportSenderQualificationId");
            this.Property(t => t.PublicBodyId).HasColumnName("PublicBodyId");

            // Relationships
            this.HasRequired(t => t.DataStatu)
                .WithMany(t => t.MonthlyReports)
                .HasForeignKey(d => d.Status);
            this.HasRequired(t => t.GMonth)
                .WithMany(t => t.MonthlyReports)
                .HasForeignKey(d => d.ReportMonth);
            this.HasRequired(t => t.Location)
                .WithMany(t => t.MonthlyReports)
                .HasForeignKey(d => d.Region);
            this.HasRequired(t => t.Location1)
                .WithMany(t => t.MonthlyReports1)
                .HasForeignKey(d => d.Zone);
            this.HasRequired(t => t.Location2)
                .WithMany(t => t.MonthlyReports2)
                .HasForeignKey(d => d.Woreda);
            this.HasOptional(t => t.Publicbody)
                .WithMany(t => t.MonthlyReports)
                .HasForeignKey(d => d.PublicBodyId);
            this.HasOptional(t => t.Qualification)
                .WithMany(t => t.MonthlyReports)
                .HasForeignKey(d => d.ReportSenderQualificationId);
            this.HasRequired(t => t.ReportYesNo)
                .WithMany(t => t.MonthlyReports)
                .HasForeignKey(d => d.IsReportAccepted);
            this.HasOptional(t => t.UserAccount)
                .WithMany(t => t.MonthlyReports)
                .HasForeignKey(d => d.CreatedBy);
            this.HasOptional(t => t.UserAccount1)
                .WithMany(t => t.MonthlyReports1)
                .HasForeignKey(d => d.LastModifiedBy);
            this.HasOptional(t => t.UserAccount2)
                .WithMany(t => t.MonthlyReports2)
                .HasForeignKey(d => d.ApprovedBy);
            this.HasOptional(t => t.UserAccount3)
                .WithMany(t => t.MonthlyReports3)
                .HasForeignKey(d => d.VerifiedBy);

        }
    }
}
