.class public Lg/ezz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final c:Lg/ezz;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lg/ezz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/ezz;->d:I

    iput-object p2, p0, Lg/ezz;->e:Ljava/lang/String;

    iput-object p3, p0, Lg/ezz;->f:Ljava/lang/String;

    iput-object p4, p0, Lg/ezz;->c:Lg/ezz;

    return-void
.end method


# virtual methods
.method public b()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "Code"

    iget v2, p0, Lg/ezz;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Message"

    iget-object v2, p0, Lg/ezz;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Domain"

    iget-object v2, p0, Lg/ezz;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Cause"

    iget-object v2, p0, Lg/ezz;->c:Lg/ezz;

    if-nez v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0

    :cond_0
    invoke-virtual {v2}, Lg/ezz;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lg/ezz;->d:I

    return v0
.end method

.method public final h()Lg/abz;
    .locals 8

    iget-object v0, p0, Lg/ezz;->c:Lg/ezz;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lg/ezz;->f:Ljava/lang/String;

    iget-object v3, v0, Lg/ezz;->e:Ljava/lang/String;

    iget v2, v0, Lg/ezz;->d:I

    new-instance v1, Lg/abz;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lg/abz;-><init>(ILjava/lang/String;Ljava/lang/String;Lg/abz;Landroid/os/IBinder;)V

    move-object v6, v1

    :goto_0
    new-instance v2, Lg/abz;

    const/4 v7, 0x0

    iget v3, p0, Lg/ezz;->d:I

    iget-object v4, p0, Lg/ezz;->e:Ljava/lang/String;

    iget-object v5, p0, Lg/ezz;->f:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lg/abz;-><init>(ILjava/lang/String;Ljava/lang/String;Lg/abz;Landroid/os/IBinder;)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lg/ezz;->b()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "Error forming toString output."

    return-object v0
.end method
