package g;

import com.google.android.gms.internal.ads.zzed;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class kb {

    /* renamed from: c, reason: collision with root package name */
    public final zzed f19530c = new zzed();

    /* renamed from: d, reason: collision with root package name */
    public final StringBuilder f19531d = new StringBuilder();

    /* renamed from: b, reason: collision with root package name */
    public static final Pattern f19529b = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f19528a = Pattern.compile("^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$");

    public static String e(zzed zzedVar, StringBuilder sb) {
        f(zzedVar);
        if (zzedVar.zzb() == 0) {
            return null;
        }
        String g2 = g(zzedVar, sb);
        if (!"".equals(g2)) {
            return g2;
        }
        char zzm = (char) zzedVar.zzm();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(zzm);
        return sb2.toString();
    }

    public static void f(zzed zzedVar) {
        while (true) {
            for (boolean z = true; zzedVar.zzb() > 0 && z; z = false) {
                char c2 = (char) zzedVar.zzN()[zzedVar.zzd()];
                if (c2 == '\t' || c2 == '\n' || c2 == '\f' || c2 == '\r' || c2 == ' ') {
                    zzedVar.zzM(1);
                } else {
                    int zzd = zzedVar.zzd();
                    int zze = zzedVar.zze();
                    byte[] zzN = zzedVar.zzN();
                    if (zzd + 2 <= zze) {
                        int i = zzd + 1;
                        if (zzN[zzd] == 47) {
                            int i2 = zzd + 2;
                            if (zzN[i] == 42) {
                                while (true) {
                                    int i3 = i2 + 1;
                                    if (i3 >= zze) {
                                        break;
                                    }
                                    if (((char) zzN[i2]) == '*' && ((char) zzN[i3]) == '/') {
                                        zze = i2 + 2;
                                        i2 = zze;
                                    } else {
                                        i2 = i3;
                                    }
                                }
                                zzedVar.zzM(zze - zzedVar.zzd());
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
            return;
        }
    }

    public static String g(zzed zzedVar, StringBuilder sb) {
        sb.setLength(0);
        int zzd = zzedVar.zzd();
        int zze = zzedVar.zze();
        loop0: while (true) {
            for (boolean z = false; zzd < zze && !z; z = true) {
                char c2 = (char) zzedVar.zzN()[zzd];
                if ((c2 >= 'A' && c2 <= 'Z') || ((c2 >= 'a' && c2 <= 'z') || ((c2 >= '0' && c2 <= '9') || c2 == '#' || c2 == '-' || c2 == '.' || c2 == '_'))) {
                    sb.append(c2);
                    zzd++;
                }
            }
        }
        zzedVar.zzM(zzd - zzedVar.zzd());
        return sb.toString();
    }
}
