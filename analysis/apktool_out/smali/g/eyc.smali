.class public final Lg/eyc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/asu;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lg/eyc;->b:I

    iput-object p1, p0, Lg/eyc;->c:Ljava/lang/String;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lg/eyc;->d:Ljava/nio/ByteBuffer;

    new-instance p1, Lg/asu;

    new-instance p2, Lg/dsg;

    invoke-direct {p2, p0, p4}, Lg/dsg;-><init>(Lg/eyc;I)V

    invoke-direct {p1, p2}, Lg/asu;-><init>(Lg/dsg;)V

    iput-object p1, p0, Lg/eyc;->a:Lg/asu;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/eyc;->c:Ljava/lang/String;

    return-object v0
.end method
