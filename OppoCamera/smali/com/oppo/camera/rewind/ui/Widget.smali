.class public abstract Lcom/oppo/camera/rewind/ui/Widget;
.super Ljava/lang/Object;
.source "Widget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/rewind/ui/Widget$Config;
    }
.end annotation


# instance fields
.field protected mCfg:Lcom/oppo/camera/rewind/ui/Widget$Config;

.field protected mChildren:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/oppo/camera/rewind/ui/Widget;",
            ">;"
        }
    .end annotation
.end field

.field protected mDNDTrgs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/oppo/camera/rewind/ui/Widget;",
            ">;"
        }
    .end annotation
.end field

.field protected mDirty:Z

.field protected mInteractible:Z

.field protected mMinMaxState:I

.field protected mMinimizeTime:J

.field private mObj:Ljava/lang/Object;

.field protected mPopupChild:Lcom/oppo/camera/rewind/ui/Widget;

.field protected mPopupParent:Lcom/oppo/camera/rewind/ui/Widget;

.field protected mPrevBBox:Landroid/graphics/Rect;

.field protected mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

.field protected mVisible:Z


# direct methods
.method public constructor <init>(Lcom/oppo/camera/rewind/ui/UiManager;)V
    .locals 4
    .parameter "uiManager"

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mChildren:Ljava/util/Vector;

    .line 19
    iput-boolean v3, p0, Lcom/oppo/camera/rewind/ui/Widget;->mVisible:Z

    .line 20
    iput-boolean v3, p0, Lcom/oppo/camera/rewind/ui/Widget;->mDirty:Z

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mInteractible:Z

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mPrevBBox:Landroid/graphics/Rect;

    .line 26
    new-instance v0, Lcom/oppo/camera/rewind/ui/Widget$Config;

    invoke-direct {v0, p0}, Lcom/oppo/camera/rewind/ui/Widget$Config;-><init>(Lcom/oppo/camera/rewind/ui/Widget;)V

    iput-object v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mCfg:Lcom/oppo/camera/rewind/ui/Widget$Config;

    .line 38
    iput v3, p0, Lcom/oppo/camera/rewind/ui/Widget;->mMinMaxState:I

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mMinimizeTime:J

    .line 44
    iput-object p1, p0, Lcom/oppo/camera/rewind/ui/Widget;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    .line 45
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mPrevBBox:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Widget;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/ui/UiManager;->dims()Lcom/scalado/base/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Widget;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v2}, Lcom/oppo/camera/rewind/ui/UiManager;->dims()Lcom/scalado/base/Size;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 46
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/rewind/ui/UiManager;->addWidget(Lcom/oppo/camera/rewind/ui/Widget;)V

    .line 47
    return-void
.end method


# virtual methods
.method public addChild(Lcom/oppo/camera/rewind/ui/Widget;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mChildren:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v0, p0, p1}, Lcom/oppo/camera/rewind/ui/UiManager;->putUnder(Lcom/oppo/camera/rewind/ui/Widget;Lcom/oppo/camera/rewind/ui/Widget;)V

    .line 92
    return-void
.end method

.method boundingBox(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "bbox"

    .prologue
    const/4 v2, 0x0

    .line 182
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v0}, Lcom/oppo/camera/rewind/ui/UiManager;->dims()Lcom/scalado/base/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/rewind/ui/Widget;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v1}, Lcom/oppo/camera/rewind/ui/UiManager;->dims()Lcom/scalado/base/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 183
    return-void
.end method

.method distance(II)F
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 190
    const v0, 0x7f7fffff

    return v0
.end method

.method dndContains(Landroid/graphics/Point;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method dndDistance(Landroid/graphics/Point;)F
    .locals 1
    .parameter "p"

    .prologue
    .line 227
    const v0, 0x7f7fffff

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 165
    return-void
.end method

.method public getArea(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 146
    return-void
.end method

.method getDNDEnabled()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mDNDTrgs:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mDNDTrgs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getDNDTarget(Landroid/graphics/Point;)Lcom/oppo/camera/rewind/ui/Widget;
    .locals 6
    .parameter "p"

    .prologue
    .line 214
    const v1, 0x7f7fffff

    .line 215
    .local v1, dMin:F
    const/4 v3, 0x0

    .line 216
    .local v3, trg:Lcom/oppo/camera/rewind/ui/Widget;
    iget-object v5, p0, Lcom/oppo/camera/rewind/ui/Widget;->mDNDTrgs:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/rewind/ui/Widget;

    .line 217
    .local v4, w:Lcom/oppo/camera/rewind/ui/Widget;
    invoke-virtual {v4, p1}, Lcom/oppo/camera/rewind/ui/Widget;->dndDistance(Landroid/graphics/Point;)F

    move-result v0

    .line 218
    .local v0, d:F
    cmpg-float v5, v0, v1

    if-gez v5, :cond_0

    .line 219
    move-object v3, v4

    .line 220
    move v1, v0

    goto :goto_0

    .line 223
    .end local v0           #d:F
    .end local v4           #w:Lcom/oppo/camera/rewind/ui/Widget;
    :cond_1
    return-object v3
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mObj:Ljava/lang/Object;

    return-object v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 74
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Widget;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v2, p0}, Lcom/oppo/camera/rewind/ui/UiManager;->hide(Lcom/oppo/camera/rewind/ui/Widget;)V

    .line 75
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Widget;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v2, p0}, Lcom/oppo/camera/rewind/ui/UiManager;->removeModal(Lcom/oppo/camera/rewind/ui/Widget;)V

    .line 76
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oppo/camera/rewind/ui/Widget;->mVisible:Z

    .line 77
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Widget;->mChildren:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/rewind/ui/Widget;

    .line 78
    .local v0, child:Lcom/oppo/camera/rewind/ui/Widget;
    invoke-virtual {v0}, Lcom/oppo/camera/rewind/ui/Widget;->hide()V

    goto :goto_0

    .line 80
    .end local v0           #child:Lcom/oppo/camera/rewind/ui/Widget;
    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Widget;->mPopupChild:Lcom/oppo/camera/rewind/ui/Widget;

    if-eqz v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Widget;->mPopupChild:Lcom/oppo/camera/rewind/ui/Widget;

    invoke-virtual {v2}, Lcom/oppo/camera/rewind/ui/Widget;->hide()V

    .line 83
    :cond_1
    return-void
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mDirty:Z

    return v0
.end method

.method isInteractible()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mInteractible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mVisible:Z

    return v0
.end method

.method public maximize()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mMinMaxState:I

    .line 126
    return-void
.end method

.method public minimize()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mMinMaxState:I

    .line 122
    return-void
.end method

.method onOut()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mCfg:Lcom/oppo/camera/rewind/ui/Widget$Config;

    iget-boolean v0, v0, Lcom/oppo/camera/rewind/ui/Widget$Config;->mHideOnOut:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mVisible:Z

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/ui/Widget;->hide()V

    .line 204
    const/4 v0, 0x1

    .line 206
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method recycle()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method setClean()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mDirty:Z

    .line 199
    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/oppo/camera/rewind/ui/Widget;->mObj:Ljava/lang/Object;

    .line 150
    return-void
.end method

.method public setRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 142
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 50
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Widget;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v2, p0}, Lcom/oppo/camera/rewind/ui/UiManager;->show(Lcom/oppo/camera/rewind/ui/Widget;)V

    .line 51
    iget-object v2, p0, Lcom/oppo/camera/rewind/ui/Widget;->mChildren:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/rewind/ui/Widget;

    .line 52
    .local v0, child:Lcom/oppo/camera/rewind/ui/Widget;
    invoke-virtual {v0}, Lcom/oppo/camera/rewind/ui/Widget;->show()V

    goto :goto_0

    .line 54
    .end local v0           #child:Lcom/oppo/camera/rewind/ui/Widget;
    :cond_0
    return-void
.end method

.method public showOnTop(Z)V
    .locals 1
    .parameter "deselectOnDown"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mCfg:Lcom/oppo/camera/rewind/ui/Widget$Config;

    iput-boolean p1, v0, Lcom/oppo/camera/rewind/ui/Widget$Config;->mOnTopDeselectOnDown:Z

    .line 69
    iget-object v0, p0, Lcom/oppo/camera/rewind/ui/Widget;->mUiMgr:Lcom/oppo/camera/rewind/ui/UiManager;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/rewind/ui/UiManager;->putOnTop(Lcom/oppo/camera/rewind/ui/Widget;)V

    .line 70
    invoke-virtual {p0}, Lcom/oppo/camera/rewind/ui/Widget;->show()V

    .line 71
    return-void
.end method

.method public update(J)V
    .locals 0
    .parameter "t"

    .prologue
    .line 161
    return-void
.end method
