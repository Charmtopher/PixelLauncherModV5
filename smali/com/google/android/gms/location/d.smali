.class public Lcom/google/android/gms/location/d;
.super Ljava/lang/Object;


# static fields
.field private static final Aa:Lcom/google/android/gms/common/api/k;

.field private static final Ab:Lcom/google/android/gms/common/api/f;

.field public static final Ac:Lcom/google/android/gms/common/api/a;

.field public static final Qa:Lcom/google/android/gms/location/a;

.field public static final Qb:Lcom/google/android/gms/location/c;

.field public static final Qc:Lcom/google/android/gms/location/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/k;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/d;->Aa:Lcom/google/android/gms/common/api/k;

    new-instance v0, Lcom/google/android/gms/location/f;

    invoke-direct {v0}, Lcom/google/android/gms/location/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/d;->Ab:Lcom/google/android/gms/common/api/f;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string v1, "LocationServices.API"

    sget-object v2, Lcom/google/android/gms/location/d;->Ab:Lcom/google/android/gms/common/api/f;

    sget-object v3, Lcom/google/android/gms/location/d;->Aa:Lcom/google/android/gms/common/api/k;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/k;)V

    sput-object v0, Lcom/google/android/gms/location/d;->Ac:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/location/internal/s;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/s;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/d;->Qa:Lcom/google/android/gms/location/a;

    new-instance v0, Lcom/google/android/gms/location/internal/b;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/d;->Qb:Lcom/google/android/gms/location/c;

    new-instance v0, Lcom/google/android/gms/location/internal/o;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/o;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/d;->Qc:Lcom/google/android/gms/location/e;

    return-void
.end method

.method public static E(Landroid/content/Context;)Lcom/google/android/gms/location/b;
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
