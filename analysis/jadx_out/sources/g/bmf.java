package g;

import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class bmf implements faq {

    /* renamed from: a, reason: collision with root package name */
    public faq[] f11818a;

    /* renamed from: b, reason: collision with root package name */
    public String f11819b;

    /* renamed from: c, reason: collision with root package name */
    public gqx f11820c;

    @Override // g.faq
    public final String d() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f11819b);
        sb.append("(");
        faq[] faqVarArr = this.f11818a;
        if (faqVarArr != null && faqVarArr.length > 0) {
            int i = 0;
            while (true) {
                faq[] faqVarArr2 = this.f11818a;
                if (i >= faqVarArr2.length) {
                    break;
                }
                sb.append(faqVarArr2[i].d());
                sb.append(",");
                i++;
            }
        }
        sb.append(")");
        return sb.toString();
    }

    @Override // g.faq
    public final axb dq() {
        return euc.dq;
    }

    @Override // g.faq
    public final Object dq(Map map) {
        gqx gqxVar = new gqx();
        this.f11820c = gqxVar;
        String str = this.f11819b;
        gqxVar.f18610a = str;
        Object[] objArr = new Object[this.f11818a.length];
        int i = 0;
        while (true) {
            faq[] faqVarArr = this.f11818a;
            if (i >= faqVarArr.length) {
                this.f11820c.f18611b = objArr;
                return dzm.aq(str).p((JSONObject) map.get("default_key"), objArr);
            }
            faq faqVar = faqVarArr[i];
            if (faqVar != null) {
                objArr[i] = faqVar.dq(map);
            }
            i++;
        }
    }
}
