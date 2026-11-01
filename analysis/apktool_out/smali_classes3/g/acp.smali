.class public abstract Lg/acp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/gul;


# instance fields
.field public final b:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/gul;

    const-class v1, Ljava/util/Date;

    invoke-direct {v0, v1}, Lg/acp;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lg/acp;->a:Lg/gul;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/acp;->b:Ljava/lang/Class;

    return-void
.end method
