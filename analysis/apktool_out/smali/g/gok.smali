.class public final Lg/gok;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Result;


# instance fields
.field public final a:Lcom/bykv/vk/openvk/api/proto/ValueSet;

.field public final b:Z

.field public final c:I

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZILjava/lang/String;Lcom/bykv/vk/openvk/api/proto/ValueSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lg/gok;->b:Z

    iput p2, p0, Lg/gok;->c:I

    iput-object p3, p0, Lg/gok;->d:Ljava/lang/String;

    iput-object p4, p0, Lg/gok;->a:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-void
.end method


# virtual methods
.method public final code()I
    .locals 1

    iget v0, p0, Lg/gok;->c:I

    return v0
.end method

.method public final isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lg/gok;->b:Z

    return v0
.end method

.method public final message()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/gok;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    iget-object v0, p0, Lg/gok;->a:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-object v0
.end method
