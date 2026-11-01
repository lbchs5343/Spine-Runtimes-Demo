package g;

import java.util.HashSet;

/* loaded from: classes.dex */
public final class dcj {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f13958a = dsr.k(dcj.class);

    /* renamed from: b, reason: collision with root package name */
    public final HashSet f13959b = new HashSet();

    /* renamed from: c, reason: collision with root package name */
    public final HashSet f13960c = new HashSet();

    public static void d(awj awjVar, String str, Throwable th) {
        dcj dcjVar = awjVar.a().p;
        synchronized (dcjVar) {
            try {
                dcjVar.f13959b.add((epk) awjVar);
                String e2 = e(awjVar, str);
                if (th instanceof StackOverflowError) {
                    f13958a.m(e2, "{}, error: StackOverflowError");
                } else if (th instanceof blf) {
                    String message = th.getMessage();
                    blf blfVar = new blf(message);
                    if (message != null && !message.isEmpty()) {
                        f13958a.b(e2, "{}, details: {}", message);
                        th = blfVar;
                    }
                    f13958a.m(e2, "{}");
                    th = blfVar;
                } else {
                    f13958a.l(e2, th);
                }
                ((lh) ((epk) awjVar)).o(acq.af, new hab(str, th));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static String e(awj awjVar, String str) {
        StringBuilder l = tn.l(str, " in ");
        l.append(awjVar.typeName());
        l.append(": ");
        l.append(awjVar);
        l.append(", file: ");
        l.append(awjVar._by());
        return l.toString();
    }
}
