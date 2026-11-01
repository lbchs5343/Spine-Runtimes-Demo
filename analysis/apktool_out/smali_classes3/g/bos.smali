.class public final Lg/bos;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/bos;

.field public static final b:Lg/bos;

.field public static final c:Lg/bos;

.field public static final d:Lg/bos;

.field public static final e:Ljava/util/LinkedHashMap;

.field public static final f:Lg/bos;

.field public static final g:Lg/bos;

.field public static final h:Lg/bos;

.field public static final i:Lg/bos;

.field public static final j:Lg/bos;

.field public static final k:Lg/bos;

.field public static final l:Lg/bos;

.field public static final m:Lg/ao;

.field public static final n:Lg/bos;

.field public static final o:Lg/bos;

.field public static final p:Lg/bos;

.field public static final q:Lg/aqn;

.field public static final r:Lg/bos;

.field public static final s:Lg/bos;


# instance fields
.field public final t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg/ao;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lg/ao;-><init>(I)V

    sput-object v0, Lg/bos;->m:Lg/ao;

    new-instance v1, Lg/aqn;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lg/aqn;-><init>(I)V

    sput-object v1, Lg/bos;->q:Lg/aqn;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lg/bos;->e:Ljava/util/LinkedHashMap;

    const-string v1, "SSL_RSA_WITH_NULL_MD5"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "SSL_RSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "SSL_RSA_WITH_RC4_128_MD5"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "SSL_RSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "SSL_RSA_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    move-result-object v1

    sput-object v1, Lg/bos;->g:Lg/bos;

    const-string v1, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "SSL_DH_anon_WITH_RC4_128_MD5"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "SSL_DH_anon_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_KRB5_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_KRB5_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_KRB5_WITH_DES_CBC_MD5"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_KRB5_WITH_RC4_128_MD5"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    move-result-object v1

    sput-object v1, Lg/bos;->h:Lg/bos;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    move-result-object v1

    sput-object v1, Lg/bos;->r:Lg/bos;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_RSA_WITH_NULL_SHA256"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_PSK_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_PSK_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_PSK_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_PSK_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_RSA_WITH_SEED_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    move-result-object v1

    sput-object v1, Lg/bos;->a:Lg/bos;

    const-string v1, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    move-result-object v1

    sput-object v1, Lg/bos;->l:Lg/bos;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_FALLBACK_SCSV"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDH_RSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    move-result-object v1

    sput-object v1, Lg/bos;->n:Lg/bos;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    move-result-object v1

    sput-object v1, Lg/bos;->b:Lg/bos;

    const-string v1, "TLS_ECDH_anon_WITH_NULL_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    move-result-object v1

    sput-object v1, Lg/bos;->f:Lg/bos;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    move-result-object v1

    sput-object v1, Lg/bos;->k:Lg/bos;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    move-result-object v1

    sput-object v1, Lg/bos;->d:Lg/bos;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    move-result-object v1

    sput-object v1, Lg/bos;->c:Lg/bos;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    move-result-object v1

    sput-object v1, Lg/bos;->j:Lg/bos;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    move-result-object v1

    sput-object v1, Lg/bos;->o:Lg/bos;

    const-string v1, "TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    move-result-object v1

    sput-object v1, Lg/bos;->s:Lg/bos;

    const-string v1, "TLS_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    move-result-object v1

    sput-object v1, Lg/bos;->i:Lg/bos;

    const-string v1, "TLS_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    move-result-object v1

    sput-object v1, Lg/bos;->p:Lg/bos;

    const-string v1, "TLS_AES_128_CCM_SHA256"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    const-string v1, "TLS_AES_128_CCM_8_SHA256"

    invoke-static {v0, v1}, Lg/ao;->ah(Lg/ao;Ljava/lang/String;)Lg/bos;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bos;->t:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/bos;->t:Ljava/lang/String;

    return-object v0
.end method
