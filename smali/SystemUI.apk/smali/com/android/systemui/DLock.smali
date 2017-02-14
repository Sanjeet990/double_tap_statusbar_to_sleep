.class public Lcom/android/systemui/DLock;
.super Landroid/view/View;
.source "DLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/DLock$GestureListener;
    }
.end annotation


# instance fields
.field c:Landroid/content/Context;

.field public d_tap:I

.field gestureDetector:Landroid/view/GestureDetector;

.field isDoubleClick:Z

.field lastTouchUpTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/DLock;->lastTouchUpTime:J

    .line 18
    iput-boolean v2, p0, Lcom/android/systemui/DLock;->isDoubleClick:Z

    .line 19
    iput v2, p0, Lcom/android/systemui/DLock;->d_tap:I

    .line 23
    iput-object p1, p0, Lcom/android/systemui/DLock;->c:Landroid/content/Context;

    .line 25
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/systemui/DLock$GestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/DLock$GestureListener;-><init>(Lcom/android/systemui/DLock;Lcom/android/systemui/DLock$GestureListener;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/DLock;->gestureDetector:Landroid/view/GestureDetector;

    .line 26
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/systemui/DLock;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
