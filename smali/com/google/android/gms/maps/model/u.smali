.class final Lcom/google/android/gms/maps/model/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/maps/model/c;


# instance fields
.field private final Vr:Lcom/google/android/gms/maps/model/internal/zzz;

.field private synthetic Vs:Lcom/google/android/gms/maps/model/TileOverlayOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/model/u;->Vs:Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lcom/google/android/gms/maps/model/u;->Vs:Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-static {p1}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->a(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/internal/zzz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/model/u;->Vr:Lcom/google/android/gms/maps/model/internal/zzz;

    return-void
.end method
