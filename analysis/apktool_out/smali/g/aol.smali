.class public final Lg/aol;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Ljava/lang/String;

.field public final synthetic b:Lg/djo;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lg/djo;)V
    .locals 0

    iput-object p2, p0, Lg/aol;->b:Lg/djo;

    const-string p2, "tables"

    invoke-static {p1, p2}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/aol;->a:[Ljava/lang/String;

    return-void
.end method
