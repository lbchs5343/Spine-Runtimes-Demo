.class public final Lg/fzd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lg/fzd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/fzd;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/fzd;->a:Lg/fzd;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    sget-object v0, Lg/fzd;->a:Lg/fzd;

    return-object v0
.end method
