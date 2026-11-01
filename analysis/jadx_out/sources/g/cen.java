package g;

import java.util.function.IntConsumer;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final /* synthetic */ class cen implements IntConsumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12744a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f12745b;

    public /* synthetic */ cen(foj fojVar, StringBuilder sb) {
        this.f12745b = sb;
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        int type;
        boolean z;
        int i2 = this.f12744a;
        Object obj = this.f12745b;
        switch (i2) {
            case 0:
                aot aotVar = (aot) obj;
                if (Character.isDigit(i)) {
                    aotVar.f10587c++;
                }
                aotVar.f10586b++;
                break;
            default:
                StringBuilder sb = (StringBuilder) obj;
                String j = foj.j(i);
                if (j == null) {
                    if (i < 32) {
                        z = true;
                    } else if (i < 127) {
                        z = false;
                    } else {
                        Pattern pattern = cbd.f12584a;
                        z = !(!Character.isISOControl(i) && (!Character.isWhitespace(i) ? (type = Character.getType(i)) == 0 || type == 15 || type == 16 || type == 18 || type == 19 : i != 32));
                    }
                    if (!z) {
                        sb.appendCodePoint(i);
                        break;
                    } else {
                        sb.append("\\u");
                        sb.append(String.format("%04x", Integer.valueOf(i)));
                        break;
                    }
                } else {
                    sb.append(j);
                    break;
                }
                break;
        }
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        int i = this.f12744a;
        return j$.util.function.l.$default$andThen(this, intConsumer);
    }
}
