.class public Lcom/google/android/apps/nexuslauncher/instantapps/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static sA:Lcom/google/android/apps/nexuslauncher/instantapps/d;


# instance fields
.field final sB:Landroid/app/usage/UsageStatsManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "usagestats"

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManager;

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/instantapps/d;->sB:Landroid/app/usage/UsageStatsManager;

    .line 38
    return-void
.end method
