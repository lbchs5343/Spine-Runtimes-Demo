.class public final Lg/drg;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private final status:Lg/ety;


# direct methods
.method public constructor <init>(Lg/ety;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lg/drg;->status:Lg/ety;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lg/ety;)V
    .locals 1

    const-string v0, "Detail message must not be empty"

    invoke-static {p1, v0}, Lg/ckd;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lg/drg;->status:Lg/ety;

    return-void
.end method
