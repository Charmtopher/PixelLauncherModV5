.class final Lcom/google/android/gms/phenotype/n;
.super Lcom/google/android/gms/internal/cn;


# instance fields
.field private synthetic WH:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/phenotype/n;->WH:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/cn;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/tasks/c;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/al;

    new-instance v0, Lcom/google/android/gms/phenotype/f;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/phenotype/f;-><init>(Lcom/google/android/gms/tasks/c;B)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/al;->eJ()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/pz;

    iget-object p2, p0, Lcom/google/android/gms/phenotype/n;->WH:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/pz;->zzb(Lcom/google/android/gms/internal/px;Ljava/lang/String;)V

    return-void
.end method
