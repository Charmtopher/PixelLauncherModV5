.class public Lcom/android/launcher3/dragndrop/DragView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field static sDragAlpha:F

.field private static final sTempMatrix1:Landroid/graphics/ColorMatrix;

.field private static final sTempMatrix2:Landroid/graphics/ColorMatrix;


# instance fields
.field public mAnim:Landroid/animation/ValueAnimator;

.field public mAnimatedShiftX:I

.field public mAnimatedShiftY:I

.field mAnimationCancelled:Z

.field private mBadge:Landroid/graphics/drawable/Drawable;

.field private mBaseFilter:Landroid/graphics/ColorMatrixColorFilter;

.field private mBgSpringDrawable:Landroid/graphics/drawable/Drawable;

.field public mBitmap:Landroid/graphics/Bitmap;

.field final mBlurSizeOutline:I

.field public mCrossFadeBitmap:Landroid/graphics/Bitmap;

.field mCrossFadeProgress:F

.field mCurrentFilter:[F

.field final mDragController:Lcom/android/launcher3/dragndrop/DragController;

.field final mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

.field public mDragRegion:Landroid/graphics/Rect;

.field public mDragVisualizeOffset:Landroid/graphics/Point;

.field private mDrawBitmap:Z

.field private mFgSpringDrawable:Landroid/graphics/drawable/Drawable;

.field private mFilterAnimator:Landroid/animation/ValueAnimator;

.field public mHasDrawn:Z

.field public final mInitialScale:F

.field public mIntrinsicIconScale:F

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field mPaint:Landroid/graphics/Paint;

.field final mRegistrationX:I

.field final mRegistrationY:I

.field private mScaledMaskPath:Landroid/graphics/Path;

.field final mTempLoc:[I

.field private mTranslateX:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

.field private mTranslateY:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/android/launcher3/dragndrop/DragView;->sTempMatrix1:Landroid/graphics/ColorMatrix;

    .line 74
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/android/launcher3/dragndrop/DragView;->sTempMatrix2:Landroid/graphics/ColorMatrix;

    .line 79
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/android/launcher3/dragndrop/DragView;->sDragAlpha:F

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;IIFF)V
    .locals 4

    .line 132
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mDrawBitmap:Z

    .line 89
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mTempLoc:[I

    .line 91
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    .line 92
    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    .line 96
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mHasDrawn:Z

    .line 97
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mCrossFadeProgress:F

    .line 98
    iput-boolean v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimationCancelled:Z

    .line 103
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mIntrinsicIconScale:F

    .line 133
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 134
    iget-object v2, p1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iput-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 135
    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    .line 137
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, p6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p6

    int-to-float p6, p6

    div-float/2addr p1, p6

    .line 140
    invoke-virtual {p0, p5}, Lcom/android/launcher3/dragndrop/DragView;->setScaleX(F)V

    .line 141
    invoke-virtual {p0, p5}, Lcom/android/launcher3/dragndrop/DragView;->setScaleY(F)V

    .line 144
    new-array p6, v0, [F

    fill-array-data p6, :array_0

    invoke-static {p6}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p6

    iput-object p6, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    .line 145
    iget-object p6, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {p6, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 146
    iget-object p6, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/dragndrop/DragView$1;

    invoke-direct {v2, p0, p5, p1}, Lcom/android/launcher3/dragndrop/DragView$1;-><init>(Lcom/android/launcher3/dragndrop/DragView;FF)V

    invoke-virtual {p6, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 163
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    new-instance p6, Lcom/android/launcher3/dragndrop/DragView$2;

    invoke-direct {p6, p0}, Lcom/android/launcher3/dragndrop/DragView$2;-><init>(Lcom/android/launcher3/dragndrop/DragView;)V

    invoke-virtual {p1, p6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 172
    iput-object p2, p0, Lcom/android/launcher3/dragndrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    .line 173
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-direct {p1, v1, v1, p6, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    .line 176
    iput p3, p0, Lcom/android/launcher3/dragndrop/DragView;->mRegistrationX:I

    .line 177
    iput p4, p0, Lcom/android/launcher3/dragndrop/DragView;->mRegistrationY:I

    .line 179
    iput p5, p0, Lcom/android/launcher3/dragndrop/DragView;->mInitialScale:F

    .line 182
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 183
    invoke-virtual {p0, p1, p1}, Lcom/android/launcher3/dragndrop/DragView;->measure(II)V

    .line 184
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mPaint:Landroid/graphics/Paint;

    .line 186
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b006c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mBlurSizeOutline:I

    .line 187
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b005d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragView;->setElevation(F)V

    .line 188
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/launcher3/dragndrop/DragView;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimationCancelled:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/dragndrop/DragView;)Lcom/android/launcher3/Launcher;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaledMaskPath:Landroid/graphics/Path;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/launcher3/dragndrop/DragView;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mDrawBitmap:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/ColorMatrixColorFilter;)Landroid/graphics/ColorMatrixColorFilter;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mBaseFilter:Landroid/graphics/ColorMatrixColorFilter;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/launcher3/dragndrop/DragView;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragView;->updateColorFilter()V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/launcher3/dragndrop/DragView;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimatedShiftX:I

    return p1
.end method

.method static synthetic access$1602(Lcom/android/launcher3/dragndrop/DragView;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimatedShiftY:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/launcher3/dragndrop/DragView;)V
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->applyTranslation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/LauncherAppState;[Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 72
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object p1, p1, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p0

    aput-object p0, p3, v2

    if-eqz p0, :cond_0

    iget-object p1, p2, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {p1, p0, v2}, Lcom/android/launcher3/IconCache;->getFullResIcon(Landroid/content/pm/LauncherActivityInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1

    :cond_1
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_3

    instance-of v0, p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    iget-object p0, p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->activityInfo:Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;

    aput-object p0, p3, v2

    iget-object p1, p2, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;->getFullResIcon(Lcom/android/launcher3/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromItemInfo(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object p0

    iget-object v0, p1, Lcom/android/launcher3/shortcuts/ShortcutKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p1, Lcom/android/launcher3/shortcuts/ShortcutKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object p1, p1, Lcom/android/launcher3/shortcuts/ShortcutKey;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v3, p1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForFullDetails(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p3, v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    iget-object p2, p2, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iget p2, p2, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getShortcutIconDrawable(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_3
    iget p2, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    iget-object p2, p0, Lcom/android/launcher3/dragndrop/DragView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-wide v3, p1, Lcom/android/launcher3/ItemInfo;->id:J

    new-instance p1, Landroid/graphics/Point;

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {p2, v3, v4, p1}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->createFolderAdaptiveIcon(Lcom/android/launcher3/Launcher;JLandroid/graphics/Point;)Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;

    move-result-object p0

    if-eqz p0, :cond_4

    aput-object p0, p3, v2

    return-object p0

    :cond_4
    return-object v1
.end method

.method static synthetic access$300(Lcom/android/launcher3/dragndrop/DragView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/launcher3/dragndrop/DragView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mBadge:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mBadge:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/LauncherAppState;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/dragndrop/DragView;->getBadge(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/LauncherAppState;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;)Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mTranslateX:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;)Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mTranslateY:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/launcher3/dragndrop/DragView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mBgSpringDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mBgSpringDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/launcher3/dragndrop/DragView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView;->mFgSpringDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mFgSpringDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method private animateFilterTo([F)V
    .locals 4

    .line 512
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mCurrentFilter:[F

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mCurrentFilter:[F

    .line 513
    :goto_0
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mCurrentFilter:[F

    .line 515
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 516
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 518
    :cond_1
    new-instance v1, Landroid/animation/FloatArrayEvaluator;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mCurrentFilter:[F

    invoke-direct {v1, v2}, Landroid/animation/FloatArrayEvaluator;-><init>([F)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    .line 520
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 521
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/launcher3/dragndrop/DragView$5;

    invoke-direct {v0, p0}, Lcom/android/launcher3/dragndrop/DragView$5;-><init>(Lcom/android/launcher3/dragndrop/DragView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 528
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 529
    return-void
.end method

.method private getBadge(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/LauncherAppState;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 365
    iget-object v0, p2, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    .line 366
    iget v1, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 367
    iget-wide v1, p1, Lcom/android/launcher3/ItemInfo;->id:J

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    instance-of p1, p3, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    if-nez p1, :cond_0

    goto :goto_0

    .line 371
    :cond_0
    check-cast p3, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 372
    iget-object p1, p2, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object p1

    .line 373
    iget-object p2, p2, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {p1, p3, p2}, Lcom/android/launcher3/graphics/LauncherIcons;->getShortcutInfoBadge(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Lcom/android/launcher3/IconCache;)Lcom/android/launcher3/ItemInfoWithIcon;

    move-result-object p2

    iget-object p2, p2, Lcom/android/launcher3/ItemInfoWithIcon;->iconBitmap:Landroid/graphics/Bitmap;

    .line 374
    invoke-virtual {p1}, Lcom/android/launcher3/graphics/LauncherIcons;->recycle()V

    .line 375
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0b0068

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 376
    int-to-float p3, v0

    sub-float p1, p3, p1

    div-float v3, p1, p3

    .line 377
    new-instance p1, Landroid/graphics/drawable/InsetDrawable;

    new-instance v1, Lcom/android/launcher3/FastBitmapDrawable;

    invoke-direct {v1, p2}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v2, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;FFFF)V

    return-object p1

    .line 369
    :cond_1
    :goto_0
    new-instance p1, Lcom/android/launcher3/dragndrop/DragView$FixedSizeEmptyDrawable;

    invoke-direct {p1, v0}, Lcom/android/launcher3/dragndrop/DragView$FixedSizeEmptyDrawable;-><init>(I)V

    return-object p1

    .line 379
    :cond_2
    iget p2, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 380
    check-cast p3, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;

    iget-object p1, p3, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->mBadge:Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 382
    :cond_3
    iget-object p2, p0, Lcom/android/launcher3/dragndrop/DragView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    new-instance p3, Lcom/android/launcher3/dragndrop/DragView$FixedSizeEmptyDrawable;

    invoke-direct {p3, v0}, Lcom/android/launcher3/dragndrop/DragView$FixedSizeEmptyDrawable;-><init>(I)V

    iget-object p1, p1, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    .line 383
    invoke-virtual {p2, p3, p1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 382
    return-object p1
.end method

.method private updateColorFilter()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mCurrentFilter:[F

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 286
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaledMaskPath:Landroid/graphics/Path;

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mBgSpringDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mBaseFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 288
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mBgSpringDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mBaseFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 289
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mBadge:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mBaseFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 292
    :cond_0
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mCurrentFilter:[F

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 293
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 295
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaledMaskPath:Landroid/graphics/Path;

    if-eqz v1, :cond_2

    .line 296
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mBaseFilter:Landroid/graphics/ColorMatrixColorFilter;

    if-eqz v1, :cond_1

    .line 297
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mBaseFilter:Landroid/graphics/ColorMatrixColorFilter;

    sget-object v1, Lcom/android/launcher3/dragndrop/DragView;->sTempMatrix1:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;->getColorMatrix(Landroid/graphics/ColorMatrix;)V

    .line 298
    sget-object v0, Lcom/android/launcher3/dragndrop/DragView;->sTempMatrix2:Landroid/graphics/ColorMatrix;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mCurrentFilter:[F

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 299
    sget-object v0, Lcom/android/launcher3/dragndrop/DragView;->sTempMatrix1:Landroid/graphics/ColorMatrix;

    sget-object v1, Lcom/android/launcher3/dragndrop/DragView;->sTempMatrix2:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 301
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v1, Lcom/android/launcher3/dragndrop/DragView;->sTempMatrix1:Landroid/graphics/ColorMatrix;

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 304
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mBgSpringDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 305
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mFgSpringDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 306
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 310
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->invalidate()V

    .line 311
    return-void
.end method


# virtual methods
.method public final applyTranslation()V
    .locals 2

    .line 616
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchX:I

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mRegistrationX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimatedShiftX:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragView;->setTranslationX(F)V

    .line 617
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchY:I

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mRegistrationY:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimatedShiftY:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragView;->setTranslationY(F)V

    .line 618
    return-void
.end method

.method public final move(II)V
    .locals 2

    .line 580
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchX:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchY:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaledMaskPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mTranslateX:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchX:I

    sub-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->animateToPos(F)V

    .line 583
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mTranslateY:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchY:I

    sub-int/2addr v1, p2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->animateToPos(F)V

    .line 585
    :cond_0
    iput p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchX:I

    .line 586
    iput p2, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchY:I

    .line 587
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->applyTranslation()V

    .line 588
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mHasDrawn:Z

    .line 441
    iget-boolean v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mDrawBitmap:Z

    if-eqz v1, :cond_2

    .line 443
    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mCrossFadeProgress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 444
    move v1, v0

    goto :goto_0

    .line 443
    :cond_0
    const/4 v1, 0x0

    .line 444
    :goto_0
    const/high16 v3, 0x437f0000    # 255.0f

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    .line 445
    iget v5, p0, Lcom/android/launcher3/dragndrop/DragView;->mCrossFadeProgress:F

    sub-float v5, v4, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    .line 446
    iget-object v6, p0, Lcom/android/launcher3/dragndrop/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 448
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/dragndrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/android/launcher3/dragndrop/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v2, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 449
    if-eqz v1, :cond_2

    .line 450
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/launcher3/dragndrop/DragView;->mCrossFadeProgress:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 451
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    move-result v0

    .line 452
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 453
    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 454
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 455
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 456
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 460
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaledMaskPath:Landroid/graphics/Path;

    if-eqz v0, :cond_3

    .line 461
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 462
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mScaledMaskPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 463
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mBgSpringDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 464
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mTranslateX:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    invoke-static {v1}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->access$1400(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;)F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mTranslateY:Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    invoke-static {v2}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->access$1400(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;)F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 465
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mFgSpringDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 466
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 467
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 469
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 389
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget-object p2, p0, Lcom/android/launcher3/dragndrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragView;->setMeasuredDimension(II)V

    .line 390
    return-void
.end method

.method public final remove()V
    .locals 1

    .line 621
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 624
    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    .line 537
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 538
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 539
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->invalidate()V

    .line 540
    return-void
.end method

.method public final setColor(I)V
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 491
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mPaint:Landroid/graphics/Paint;

    .line 493
    :cond_0
    if-eqz p1, :cond_1

    .line 494
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 495
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 497
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 498
    invoke-static {p1, v1}, Lcom/android/launcher3/util/Themes;->setColorScaleOnMatrix(ILandroid/graphics/ColorMatrix;)V

    .line 499
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 501
    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/DragView;->animateFilterTo([F)V

    .line 502
    return-void

    .line 503
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mCurrentFilter:[F

    if-nez p1, :cond_2

    .line 504
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragView;->updateColorFilter()V

    return-void

    .line 506
    :cond_2
    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/DragView;->animateFilterTo([F)V

    .line 509
    return-void
.end method
