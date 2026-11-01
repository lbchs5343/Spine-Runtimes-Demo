.class public final Lg/bpt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lg/bpt;->a:I

    iput-object p1, p0, Lg/bpt;->b:Ljava/lang/String;

    iput-object p3, p0, Lg/bpt;->c:[B

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/bpt;->b:Ljava/lang/String;

    return-object v0
.end method
