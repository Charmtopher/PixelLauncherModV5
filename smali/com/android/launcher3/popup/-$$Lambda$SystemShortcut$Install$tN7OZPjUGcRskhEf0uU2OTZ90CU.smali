.class public final synthetic Lcom/android/launcher3/popup/-$$Lambda$SystemShortcut$Install$tN7OZPjUGcRskhEf0uU2OTZ90CU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/launcher3/ItemInfo;

.field private final synthetic f$1:Lcom/android/launcher3/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/-$$Lambda$SystemShortcut$Install$tN7OZPjUGcRskhEf0uU2OTZ90CU;->f$0:Lcom/android/launcher3/ItemInfo;

    iput-object p2, p0, Lcom/android/launcher3/popup/-$$Lambda$SystemShortcut$Install$tN7OZPjUGcRskhEf0uU2OTZ90CU;->f$1:Lcom/android/launcher3/Launcher;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/popup/-$$Lambda$SystemShortcut$Install$tN7OZPjUGcRskhEf0uU2OTZ90CU;->f$0:Lcom/android/launcher3/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/popup/-$$Lambda$SystemShortcut$Install$tN7OZPjUGcRskhEf0uU2OTZ90CU;->f$1:Lcom/android/launcher3/Launcher;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/popup/SystemShortcut$Install;->lambda$createOnClickListener$0(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    return-void
.end method
