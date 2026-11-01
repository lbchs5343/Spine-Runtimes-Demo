.class public final Lg/anx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lg/enb;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lg/enb;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/anx;->a:Lg/enb;

    iput-object p2, p0, Lg/anx;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/anx;->a:Lg/enb;

    invoke-virtual {v0}, Lg/enb;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
