.class public final Lg/bfi;
.super Lg/ezz;
.source "SourceFile"


# instance fields
.field public final a:Lg/bof;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lg/ezz;Lg/bof;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lg/ezz;-><init>(ILjava/lang/String;Ljava/lang/String;Lg/ezz;)V

    iput-object p5, p0, Lg/bfi;->a:Lg/bof;

    return-void
.end method


# virtual methods
.method public final b()Lorg/json/JSONObject;
    .locals 3

    invoke-super {p0}, Lg/ezz;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Response Info"

    iget-object v2, p0, Lg/bfi;->a:Lg/bof;

    if-nez v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0

    :cond_0
    invoke-virtual {v2}, Lg/bof;->d()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lg/bfi;->b()Lorg/json/JSONObject;

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
