.class Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity$2;
.super Landroid/os/Handler;
.source "BluetoothOppIncomingCalendarFileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 156
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 164
    :goto_0
    return-void

    .line 158
    :pswitch_0
    const-string v0, "BluetoothOppIncomingCalendarFileActivity"

    const-string v1, "Received DISMISS_TIMEOUT_DIALOG msg."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingCalendarFileActivity;->finish()V

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
