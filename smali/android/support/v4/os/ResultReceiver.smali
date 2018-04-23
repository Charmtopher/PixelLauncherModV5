.class public Landroid/support/v4/os/ResultReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final iv:Z

.field iw:Landroid/support/v4/os/IResultReceiver;

.field final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 141
    new-instance v0, Landroid/support/v4/os/b;

    invoke-direct {v0}, Landroid/support/v4/os/b;-><init>()V

    sput-object v0, Landroid/support/v4/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/os/ResultReceiver;->iv:Z

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/os/IResultReceiver;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/os/ResultReceiver;->iw:Landroid/support/v4/os/IResultReceiver;

    .line 139
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    .line 118
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    iget-object p2, p0, Landroid/support/v4/os/ResultReceiver;->iw:Landroid/support/v4/os/IResultReceiver;

    if-nez p2, :cond_0

    .line 129
    new-instance p2, Landroid/support/v4/os/c;

    invoke-direct {p2, p0}, Landroid/support/v4/os/c;-><init>(Landroid/support/v4/os/ResultReceiver;)V

    iput-object p2, p0, Landroid/support/v4/os/ResultReceiver;->iw:Landroid/support/v4/os/IResultReceiver;

    .line 131
    :cond_0
    iget-object p2, p0, Landroid/support/v4/os/ResultReceiver;->iw:Landroid/support/v4/os/IResultReceiver;

    invoke-interface {p2}, Landroid/support/v4/os/IResultReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 132
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
