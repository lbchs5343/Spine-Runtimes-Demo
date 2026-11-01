.class public final Lg/aws;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/cfg;


# instance fields
.field public final b:Lg/ccp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/cfg;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lg/cfg;-><init>(I)V

    sput-object v0, Lg/aws;->a:Lg/cfg;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lg/ccp;

    sget-object v1, Lg/fjo;->a:Lg/fjo;

    const/4 v1, 0x2

    new-array v1, v1, [Lg/kq;

    sget-object v2, Lg/acq;->aq:Lg/acq;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lg/aws;->a:Lg/cfg;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lg/ccp;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lg/cua;->a:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lg/aws;->b:Lg/ccp;

    return-void
.end method
