using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace IskolaAPI.Models
{
    public partial class iskolaContext : DbContext
    {
        public iskolaContext()
        {
        }

        public iskolaContext(DbContextOptions<iskolaContext> options)
            : base(options)
        {
        }

        public virtual DbSet<diakok> diakok { get; set; } = null!;
        public virtual DbSet<tanarok> tanarok { get; set; } = null!;
        public virtual DbSet<vezetoseg> vezetoseg { get; set; } = null!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseMySql("server=localhost;user id=root;database=iskola", Microsoft.EntityFrameworkCore.ServerVersion.Parse("10.4.28-mariadb"));
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.UseCollation("utf8mb4_general_ci")
                .HasCharSet("utf8mb4");

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
