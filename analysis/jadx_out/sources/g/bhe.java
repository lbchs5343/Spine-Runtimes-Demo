package g;

import java.io.IOException;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class bhe {

    /* renamed from: a, reason: collision with root package name */
    public static final heb[] f11573a;

    /* renamed from: b, reason: collision with root package name */
    public static final Map f11574b;

    static {
        heb hebVar = new heb(heb.f19329e, "");
        gei geiVar = heb.f19328d;
        heb hebVar2 = new heb(geiVar, "GET");
        heb hebVar3 = new heb(geiVar, "POST");
        gei geiVar2 = heb.f19330f;
        heb hebVar4 = new heb(geiVar2, "/");
        heb hebVar5 = new heb(geiVar2, "/index.html");
        gei geiVar3 = heb.f19325a;
        heb hebVar6 = new heb(geiVar3, "http");
        heb hebVar7 = new heb(geiVar3, "https");
        gei geiVar4 = heb.f19327c;
        heb[] hebVarArr = {hebVar, hebVar2, hebVar3, hebVar4, hebVar5, hebVar6, hebVar7, new heb(geiVar4, "200"), new heb(geiVar4, "204"), new heb(geiVar4, "206"), new heb(geiVar4, "304"), new heb(geiVar4, "400"), new heb(geiVar4, "404"), new heb(geiVar4, "500"), new heb("accept-charset", ""), new heb("accept-encoding", "gzip, deflate"), new heb("accept-language", ""), new heb("accept-ranges", ""), new heb("accept", ""), new heb("access-control-allow-origin", ""), new heb("age", ""), new heb("allow", ""), new heb("authorization", ""), new heb("cache-control", ""), new heb("content-disposition", ""), new heb("content-encoding", ""), new heb("content-language", ""), new heb("content-length", ""), new heb("content-location", ""), new heb("content-range", ""), new heb("content-type", ""), new heb("cookie", ""), new heb("date", ""), new heb("etag", ""), new heb("expect", ""), new heb("expires", ""), new heb("from", ""), new heb("host", ""), new heb("if-match", ""), new heb("if-modified-since", ""), new heb("if-none-match", ""), new heb("if-range", ""), new heb("if-unmodified-since", ""), new heb("last-modified", ""), new heb("link", ""), new heb("location", ""), new heb("max-forwards", ""), new heb("proxy-authenticate", ""), new heb("proxy-authorization", ""), new heb("range", ""), new heb("referer", ""), new heb("refresh", ""), new heb("retry-after", ""), new heb("server", ""), new heb("set-cookie", ""), new heb("strict-transport-security", ""), new heb("transfer-encoding", ""), new heb("user-agent", ""), new heb("vary", ""), new heb("via", ""), new heb("www-authenticate", "")};
        f11573a = hebVarArr;
        LinkedHashMap linkedHashMap = new LinkedHashMap(61);
        for (int i = 0; i < 61; i++) {
            if (!linkedHashMap.containsKey(hebVarArr[i].f19331g)) {
                linkedHashMap.put(hebVarArr[i].f19331g, Integer.valueOf(i));
            }
        }
        Map unmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        bff.e(unmodifiableMap, "unmodifiableMap(result)");
        f11574b = unmodifiableMap;
    }

    public static void c(gei geiVar) {
        bff.p(geiVar, abn.EXTRA_UA_APP_NAME);
        int d2 = geiVar.d();
        for (int i = 0; i < d2; i++) {
            byte m = geiVar.m(i);
            if (65 <= m && m < 91) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: ".concat(geiVar.q()));
            }
        }
    }
}
