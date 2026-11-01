.class public final Lg/ftu;
.super Lg/kj;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ftu;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final b(Lg/gea;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lg/ftu;->a:Ljava/lang/Class;

    iget-object p1, p1, Lg/gea;->f:Lg/fzn;

    invoke-virtual {p1, v0, p2}, Lg/fzn;->p(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
