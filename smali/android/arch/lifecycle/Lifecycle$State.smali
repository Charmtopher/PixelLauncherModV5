.class public final enum Landroid/arch/lifecycle/Lifecycle$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum A:Landroid/arch/lifecycle/Lifecycle$State;

.field public static final enum B:Landroid/arch/lifecycle/Lifecycle$State;

.field public static final enum C:Landroid/arch/lifecycle/Lifecycle$State;

.field public static final enum D:Landroid/arch/lifecycle/Lifecycle$State;

.field public static final enum E:Landroid/arch/lifecycle/Lifecycle$State;

.field private static final synthetic F:[Landroid/arch/lifecycle/Lifecycle$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 157
    new-instance v0, Landroid/arch/lifecycle/Lifecycle$State;

    const-string v1, "DESTROYED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/arch/lifecycle/Lifecycle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/Lifecycle$State;->A:Landroid/arch/lifecycle/Lifecycle$State;

    .line 164
    new-instance v0, Landroid/arch/lifecycle/Lifecycle$State;

    const-string v1, "INITIALIZED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/arch/lifecycle/Lifecycle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/Lifecycle$State;->B:Landroid/arch/lifecycle/Lifecycle$State;

    .line 174
    new-instance v0, Landroid/arch/lifecycle/Lifecycle$State;

    const-string v1, "CREATED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroid/arch/lifecycle/Lifecycle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/Lifecycle$State;->C:Landroid/arch/lifecycle/Lifecycle$State;

    .line 184
    new-instance v0, Landroid/arch/lifecycle/Lifecycle$State;

    const-string v1, "STARTED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroid/arch/lifecycle/Lifecycle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/Lifecycle$State;->D:Landroid/arch/lifecycle/Lifecycle$State;

    .line 190
    new-instance v0, Landroid/arch/lifecycle/Lifecycle$State;

    const-string v1, "RESUMED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Landroid/arch/lifecycle/Lifecycle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/Lifecycle$State;->E:Landroid/arch/lifecycle/Lifecycle$State;

    .line 150
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/arch/lifecycle/Lifecycle$State;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->A:Landroid/arch/lifecycle/Lifecycle$State;

    aput-object v1, v0, v2

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->B:Landroid/arch/lifecycle/Lifecycle$State;

    aput-object v1, v0, v3

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->C:Landroid/arch/lifecycle/Lifecycle$State;

    aput-object v1, v0, v4

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->D:Landroid/arch/lifecycle/Lifecycle$State;

    aput-object v1, v0, v5

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->E:Landroid/arch/lifecycle/Lifecycle$State;

    aput-object v1, v0, v6

    sput-object v0, Landroid/arch/lifecycle/Lifecycle$State;->F:[Landroid/arch/lifecycle/Lifecycle$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/arch/lifecycle/Lifecycle$State;
    .locals 1

    .line 150
    const-class v0, Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/arch/lifecycle/Lifecycle$State;

    return-object p0
.end method

.method public static values()[Landroid/arch/lifecycle/Lifecycle$State;
    .locals 1

    .line 150
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->F:[Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v0}, [Landroid/arch/lifecycle/Lifecycle$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/arch/lifecycle/Lifecycle$State;

    return-object v0
.end method
