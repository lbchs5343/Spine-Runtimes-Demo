package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class dns {
    public static final dns NO_EXCEPTION;
    public static final dns RUNTIME;
    public static final dns THROWS_REQUIRED;
    public static final dns UNKNOWN_TYPE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ dns[] f14490a;

    static {
        dns dnsVar = new dns("THROWS_REQUIRED", 0);
        THROWS_REQUIRED = dnsVar;
        dns dnsVar2 = new dns("RUNTIME", 1);
        RUNTIME = dnsVar2;
        dns dnsVar3 = new dns("UNKNOWN_TYPE", 2);
        UNKNOWN_TYPE = dnsVar3;
        dns dnsVar4 = new dns("NO_EXCEPTION", 3);
        NO_EXCEPTION = dnsVar4;
        f14490a = new dns[]{dnsVar, dnsVar2, dnsVar3, dnsVar4};
    }

    public static dns valueOf(String str) {
        return (dns) Enum.valueOf(dns.class, str);
    }

    public static dns[] values() {
        return (dns[]) f14490a.clone();
    }
}
