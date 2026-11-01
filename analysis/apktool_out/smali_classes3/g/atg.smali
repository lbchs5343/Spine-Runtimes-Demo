.class public final Lg/atg;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field final code:I

.field final networkPolicy:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const-string v0, "HTTP "

    invoke-static {p1, v0}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lg/atg;->code:I

    const/4 p1, 0x0

    iput p1, p0, Lg/atg;->networkPolicy:I

    return-void
.end method
