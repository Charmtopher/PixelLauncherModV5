.class final Lcom/google/android/gms/internal/cm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic Nl:Lcom/google/android/gms/internal/bT;

.field private synthetic Nm:Ljava/lang/String;

.field private synthetic Ny:Lcom/google/android/gms/internal/cl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cl;Lcom/google/android/gms/internal/bT;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cm;->Ny:Lcom/google/android/gms/internal/cl;

    iput-object p2, p0, Lcom/google/android/gms/internal/cm;->Nl:Lcom/google/android/gms/internal/bT;

    iput-object p3, p0, Lcom/google/android/gms/internal/cm;->Nm:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->Ny:Lcom/google/android/gms/internal/cl;

    invoke-static {v0}, Lcom/google/android/gms/internal/cl;->a(Lcom/google/android/gms/internal/cl;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->Nl:Lcom/google/android/gms/internal/bT;

    iget-object v1, p0, Lcom/google/android/gms/internal/cm;->Ny:Lcom/google/android/gms/internal/cl;

    invoke-static {v1}, Lcom/google/android/gms/internal/cl;->b(Lcom/google/android/gms/internal/cl;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/cm;->Ny:Lcom/google/android/gms/internal/cl;

    invoke-static {v1}, Lcom/google/android/gms/internal/cl;->b(Lcom/google/android/gms/internal/cl;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cm;->Nm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bT;->onCreate(Landroid/os/Bundle;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->Ny:Lcom/google/android/gms/internal/cl;

    invoke-static {v0}, Lcom/google/android/gms/internal/cl;->a(Lcom/google/android/gms/internal/cl;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->Nl:Lcom/google/android/gms/internal/bT;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bT;->onStart()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->Ny:Lcom/google/android/gms/internal/cl;

    invoke-static {v0}, Lcom/google/android/gms/internal/cl;->a(Lcom/google/android/gms/internal/cl;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->Nl:Lcom/google/android/gms/internal/bT;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bT;->onResume()V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->Ny:Lcom/google/android/gms/internal/cl;

    invoke-static {v0}, Lcom/google/android/gms/internal/cl;->a(Lcom/google/android/gms/internal/cl;)I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->Nl:Lcom/google/android/gms/internal/bT;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bT;->onStop()V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->Ny:Lcom/google/android/gms/internal/cl;

    invoke-static {v0}, Lcom/google/android/gms/internal/cl;->a(Lcom/google/android/gms/internal/cl;)I

    return-void
.end method
