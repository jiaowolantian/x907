.class Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;
.super Ljava/lang/Thread;
.source "HDR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->onPictureTaken([BLcom/scalado/camera/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;


# direct methods
.method constructor <init>(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    .line 507
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 511
    iget-object v10, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr/HDR;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR;->access$29(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 512
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 513
    .local v8, renderTimeStart:J
    iget-object v10, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$0(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v10

    invoke-interface {v10}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v10

    invoke-interface {v10}, Lcom/scalado/camera/FeatureCamera$Parameters;->getPreviewSize()Lcom/scalado/base/Size;

    move-result-object v7

    .line 514
    .local v7, postviewDims:Lcom/scalado/base/Size;
    new-instance v4, Lcom/scalado/base/Image;

    iget-object v10, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$0(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v10

    invoke-interface {v10}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v10

    invoke-interface {v10}, Lcom/scalado/camera/FeatureCamera$Parameters;->getPreviewFormat()I

    move-result v10

    invoke-static {v10}, Lcom/scalado/camera/utils/Translators;->translateToScaladoImageConfig(I)Lcom/scalado/base/Image$Config;

    move-result-object v10

    invoke-direct {v4, v7, v10}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 515
    .local v4, image:Lcom/scalado/base/Image;
    const-string v10, "ScaladoCameraFramework"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Rendering HDR postview with Dims: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v12

    invoke-virtual {v12}, Lcom/scalado/base/Size;->getWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v12

    invoke-virtual {v12}, Lcom/scalado/base/Size;->getHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Gamma: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v12

    #getter for: Lcom/scalado/camera/hdr/HDR;->mHDRImageOptions:Lcom/scalado/caps/hdrimage/HDRImage$Options;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$2(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/caps/hdrimage/HDRImage$Options;

    move-result-object v12

    invoke-virtual {v12}, Lcom/scalado/caps/hdrimage/HDRImage$Options;->getGamma()F

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ExpsoureDiff: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v12

    #getter for: Lcom/scalado/camera/hdr/HDR;->mHDRImageOptions:Lcom/scalado/caps/hdrimage/HDRImage$Options;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$2(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/caps/hdrimage/HDRImage$Options;

    move-result-object v12

    invoke-virtual {v12}, Lcom/scalado/caps/hdrimage/HDRImage$Options;->getExposure()F

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :try_start_0
    iget-object v10, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr/HDR;->mHDRImage:Lcom/scalado/caps/hdrimage/HDRImage;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR;->access$28(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/caps/hdrimage/HDRImage;

    move-result-object v10

    iget-object v11, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v11}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v11

    #getter for: Lcom/scalado/camera/hdr/HDR;->mHDRImageOptions:Lcom/scalado/caps/hdrimage/HDRImage$Options;
    invoke-static {v11}, Lcom/scalado/camera/hdr/HDR;->access$2(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/caps/hdrimage/HDRImage$Options;

    move-result-object v11

    invoke-virtual {v10, v11, v4}, Lcom/scalado/caps/hdrimage/HDRImage;->generatePreview(Lcom/scalado/caps/hdrimage/HDRImage$Options;Lcom/scalado/base/Image;)V

    .line 518
    const-string v10, "ScaladoCameraFramework"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Rendering postview took "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-virtual {v4}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 520
    .local v0, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    new-array v6, v10, [B

    .line 521
    .local v6, postview:[B
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 522
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 523
    iget-object v10, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr/HDR;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR;->access$29(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v10

    iget-object v11, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v11}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$0(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v11

    invoke-interface {v10, v6, v11}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    .end local v0           #byteBuffer:Ljava/nio/ByteBuffer;
    .end local v4           #image:Lcom/scalado/base/Image;
    .end local v6           #postview:[B
    .end local v7           #postviewDims:Lcom/scalado/base/Size;
    .end local v8           #renderTimeStart:J
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr/HDR;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR;->access$30(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 532
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 533
    .restart local v8       #renderTimeStart:J
    iget-object v10, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr/HDR;->mDims:Lcom/scalado/base/Size;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR;->access$31(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/base/Size;

    move-result-object v10

    invoke-virtual {v10}, Lcom/scalado/base/Size;->getWidth()I

    move-result v10

    iget-object v11, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v11}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v11

    #getter for: Lcom/scalado/camera/hdr/HDR;->mDims:Lcom/scalado/base/Size;
    invoke-static {v11}, Lcom/scalado/camera/hdr/HDR;->access$31(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/base/Size;

    move-result-object v11

    invoke-virtual {v11}, Lcom/scalado/base/Size;->getHeight()I

    move-result v11

    mul-int/2addr v10, v11

    div-int/lit8 v3, v10, 0x5

    .line 534
    .local v3, estimatedSize:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 536
    .local v1, dstStream:Ljava/io/ByteArrayOutputStream;
    const-string v10, "ScaladoCameraFramework"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Rendering HDR jpeg with Gamma: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v12

    #getter for: Lcom/scalado/camera/hdr/HDR;->mHDRImageOptions:Lcom/scalado/caps/hdrimage/HDRImage$Options;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$2(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/caps/hdrimage/HDRImage$Options;

    move-result-object v12

    invoke-virtual {v12}, Lcom/scalado/caps/hdrimage/HDRImage$Options;->getGamma()F

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " expsoureDiff: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v12

    #getter for: Lcom/scalado/camera/hdr/HDR;->mHDRImageOptions:Lcom/scalado/caps/hdrimage/HDRImage$Options;
    invoke-static {v12}, Lcom/scalado/camera/hdr/HDR;->access$2(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/caps/hdrimage/HDRImage$Options;

    move-result-object v12

    invoke-virtual {v12}, Lcom/scalado/caps/hdrimage/HDRImage$Options;->getExposure()F

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :try_start_1
    iget-object v10, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr/HDR;->mHDRImage:Lcom/scalado/caps/hdrimage/HDRImage;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR;->access$28(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/caps/hdrimage/HDRImage;

    move-result-object v10

    iget-object v11, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v11}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v11

    #getter for: Lcom/scalado/camera/hdr/HDR;->mHDRImageOptions:Lcom/scalado/caps/hdrimage/HDRImage$Options;
    invoke-static {v11}, Lcom/scalado/camera/hdr/HDR;->access$2(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/caps/hdrimage/HDRImage$Options;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Lcom/scalado/caps/hdrimage/HDRImage;->render(Lcom/scalado/caps/hdrimage/HDRImage$Options;Ljava/io/OutputStream;)V

    .line 539
    const-string v10, "ScaladoCameraFramework"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Rendering jpeg took "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 541
    .local v5, jpeg:[B
    iget-object v10, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr/HDR;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR;->access$30(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v10

    iget-object v11, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v11}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$0(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v11

    invoke-interface {v10, v5, v11}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 548
    .end local v1           #dstStream:Ljava/io/ByteArrayOutputStream;
    .end local v3           #estimatedSize:I
    .end local v5           #jpeg:[B
    .end local v8           #renderTimeStart:J
    :cond_1
    :goto_1
    return-void

    .line 525
    .restart local v4       #image:Lcom/scalado/base/Image;
    .restart local v7       #postviewDims:Lcom/scalado/base/Size;
    .restart local v8       #renderTimeStart:J
    :catch_0
    move-exception v2

    .line 526
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "ScaladoCameraFramework"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Failed rendering HDR postview: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v10, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr/HDR;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR;->access$29(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v10

    iget-object v11, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v11}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$0(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v11

    invoke-interface {v10, v14, v11}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    goto/16 :goto_0

    .line 543
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #image:Lcom/scalado/base/Image;
    .end local v7           #postviewDims:Lcom/scalado/base/Size;
    .restart local v1       #dstStream:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #estimatedSize:I
    :catch_1
    move-exception v2

    .line 544
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v10, "ScaladoCameraFramework"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Failed rendering HDR jpeg: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v10, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->this$0:Lcom/scalado/camera/hdr/HDR;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$1(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/hdr/HDR;

    move-result-object v10

    #getter for: Lcom/scalado/camera/hdr/HDR;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;
    invoke-static {v10}, Lcom/scalado/camera/hdr/HDR;->access$30(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Camera$PictureCallback;

    move-result-object v10

    iget-object v11, p0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler$1;->this$1:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    #getter for: Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->mCamera:Lcom/scalado/camera/FeatureCamera;
    invoke-static {v11}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;->access$0(Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)Lcom/scalado/camera/FeatureCamera;

    move-result-object v11

    invoke-interface {v10, v14, v11}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    goto :goto_1
.end method
