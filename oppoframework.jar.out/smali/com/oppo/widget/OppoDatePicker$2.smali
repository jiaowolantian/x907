.class Lcom/oppo/widget/OppoDatePicker$2;
.super Ljava/lang/Object;
.source "OppoDatePicker.java"

# interfaces
.implements Lcom/oppo/widget/OppoYearView$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoDatePicker;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoDatePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/oppo/widget/OppoDatePicker$2;->this$0:Lcom/oppo/widget/OppoDatePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/oppo/widget/OppoYearView;I)V
    .locals 4
    .parameter "picker"
    .parameter "currentResult"

    .prologue
    const/4 v3, 0x0

    .line 235
    sput p2, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    .line 236
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$2;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$1100(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/util/ChineseDateAndSolarDate;

    move-result-object v1

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    invoke-virtual {v1, v2}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetChLeapMonth(I)I

    move-result v0

    .line 237
    .local v0, leap:I
    if-nez v0, :cond_0

    .line 238
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$2;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #setter for: Lcom/oppo/widget/OppoDatePicker;->mIsLeapYear:Z
    invoke-static {v1, v3}, Lcom/oppo/widget/OppoDatePicker;->access$502(Lcom/oppo/widget/OppoDatePicker;Z)Z

    .line 244
    :goto_0
    sget-object v1, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$2;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$1200(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoMonthView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/oppo/widget/OppoMonthView;->setStopRun(Z)V

    .line 248
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$2;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$1200(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoMonthView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oppo/widget/OppoMonthView;->reDraw(I)V

    .line 259
    :goto_1
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$2;->this$0:Lcom/oppo/widget/OppoDatePicker;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoDatePicker;->upDateDisplayData()V

    .line 260
    return-void

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$2;->this$0:Lcom/oppo/widget/OppoDatePicker;

    const/4 v2, 0x1

    #setter for: Lcom/oppo/widget/OppoDatePicker;->mIsLeapYear:Z
    invoke-static {v1, v2}, Lcom/oppo/widget/OppoDatePicker;->access$502(Lcom/oppo/widget/OppoDatePicker;Z)Z

    .line 241
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$2;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #setter for: Lcom/oppo/widget/OppoDatePicker;->mLeapMonth:I
    invoke-static {v1, v0}, Lcom/oppo/widget/OppoDatePicker;->access$702(Lcom/oppo/widget/OppoDatePicker;I)I

    goto :goto_0

    .line 256
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$2;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$1200(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoMonthView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/oppo/widget/OppoMonthView;->setStopRun(Z)V

    .line 257
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker$2;->this$0:Lcom/oppo/widget/OppoDatePicker;

    #getter for: Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;
    invoke-static {v1}, Lcom/oppo/widget/OppoDatePicker;->access$1200(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoMonthView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oppo/widget/OppoMonthView;->reDraw(I)V

    goto :goto_1
.end method
