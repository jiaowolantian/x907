.class Lcom/oppo/widget/OppoTimePicker$7;
.super Ljava/lang/Object;
.source "OppoTimePicker.java"

# interfaces
.implements Lcom/oppo/widget/OppoTimeView$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoTimePicker;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoTimePicker;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoTimePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 572
    iput-object p1, p0, Lcom/oppo/widget/OppoTimePicker$7;->this$0:Lcom/oppo/widget/OppoTimePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/oppo/widget/OppoTimeView;I)V
    .locals 3
    .parameter "picker"
    .parameter "currentResult"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$7;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #setter for: Lcom/oppo/widget/OppoTimePicker;->mCurrentMinute:I
    invoke-static {v0, p2}, Lcom/oppo/widget/OppoTimePicker;->access$602(Lcom/oppo/widget/OppoTimePicker;I)I

    .line 576
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$7;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #getter for: Lcom/oppo/widget/OppoTimePicker;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$100(Lcom/oppo/widget/OppoTimePicker;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- mCurrentMinute = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/widget/OppoTimePicker$7;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #getter for: Lcom/oppo/widget/OppoTimePicker;->mCurrentMinute:I
    invoke-static {v2}, Lcom/oppo/widget/OppoTimePicker;->access$600(Lcom/oppo/widget/OppoTimePicker;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$7;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #calls: Lcom/oppo/widget/OppoTimePicker;->onTimeChanged()V
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$400(Lcom/oppo/widget/OppoTimePicker;)V

    .line 578
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$7;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #calls: Lcom/oppo/widget/OppoTimePicker;->updateDispayTime()V
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$500(Lcom/oppo/widget/OppoTimePicker;)V

    .line 579
    return-void
.end method
