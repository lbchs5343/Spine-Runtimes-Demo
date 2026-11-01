.class final Lcom/bykv/vk/component/ttvideo/network/DnsHelper$URLHostIndex;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/component/ttvideo/network/DnsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "URLHostIndex"
.end annotation


# instance fields
.field authEnd:I

.field hostEnd:I

.field hostStart:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bykv/vk/component/ttvideo/network/DnsHelper$URLHostIndex;->hostStart:I

    iput p2, p0, Lcom/bykv/vk/component/ttvideo/network/DnsHelper$URLHostIndex;->hostEnd:I

    iput p3, p0, Lcom/bykv/vk/component/ttvideo/network/DnsHelper$URLHostIndex;->authEnd:I

    return-void
.end method
