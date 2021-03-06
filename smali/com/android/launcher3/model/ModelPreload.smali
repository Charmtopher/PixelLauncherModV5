.class public Lcom/android/launcher3/model/ModelPreload;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$ModelUpdateTask;


# instance fields
.field private mAllAppsList:Lcom/android/launcher3/AllAppsList;

.field private mApp:Lcom/android/launcher3/LauncherAppState;

.field private mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field private mModel:Lcom/android/launcher3/LauncherModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final init(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/launcher3/model/ModelPreload;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 45
    iput-object p2, p0, Lcom/android/launcher3/model/ModelPreload;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 46
    iput-object p3, p0, Lcom/android/launcher3/model/ModelPreload;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 47
    iput-object p4, p0, Lcom/android/launcher3/model/ModelPreload;->mAllAppsList:Lcom/android/launcher3/AllAppsList;

    .line 48
    return-void
.end method

.method public onComplete(Z)V
    .locals 0

    .line 65
    return-void
.end method

.method public final run()V
    .locals 8

    .line 52
    iget-object v0, p0, Lcom/android/launcher3/model/ModelPreload;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const-string v0, "ModelPreload"

    const-string v1, "Workspace not loaded, loading now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/android/launcher3/model/ModelPreload;->mModel:Lcom/android/launcher3/LauncherModel;

    new-instance v7, Lcom/android/launcher3/model/LoaderResults;

    iget-object v2, p0, Lcom/android/launcher3/model/ModelPreload;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v3, p0, Lcom/android/launcher3/model/ModelPreload;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, p0, Lcom/android/launcher3/model/ModelPreload;->mAllAppsList:Lcom/android/launcher3/AllAppsList;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/model/LoaderResults;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;ILjava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v7}, Lcom/android/launcher3/LauncherModel;->startLoaderForResults(Lcom/android/launcher3/model/LoaderResults;)V

    .line 57
    :cond_0
    const-string v0, "ModelPreload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Preload completed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/model/ModelPreload;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/model/ModelPreload;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/ModelPreload;->onComplete(Z)V

    .line 59
    return-void
.end method
