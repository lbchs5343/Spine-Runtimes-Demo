package g;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class dzj implements bpj {

    /* renamed from: a, reason: collision with root package name */
    public static final Set f15123a;

    /* renamed from: b, reason: collision with root package name */
    public static final dzj f15124b;

    /* renamed from: c, reason: collision with root package name */
    public static final String f15125c;

    /* renamed from: d, reason: collision with root package name */
    public final String f15126d;

    /* renamed from: e, reason: collision with root package name */
    public final String f15127e;

    static {
        String ae = bfc.ae("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");
        f15125c = ae;
        bfc.ae("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");
        bfc.ae("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");
        f15123a = Collections.unmodifiableSet(new HashSet(Arrays.asList(new cep("proto"), new cep("json"))));
        f15124b = new dzj(ae, null);
    }

    public dzj(String str, String str2) {
        this.f15126d = str;
        this.f15127e = str2;
    }

    public static dzj f(byte[] bArr) {
        String str = new String(bArr, Charset.forName("UTF-8"));
        if (!str.startsWith("1$")) {
            throw new IllegalArgumentException("Version marker missing from extras");
        }
        String[] split = str.substring(2).split(Pattern.quote("\\"), 2);
        if (split.length != 2) {
            throw new IllegalArgumentException("Extra is not a valid encoded LegacyFlgDestination");
        }
        String str2 = split[0];
        if (str2.isEmpty()) {
            throw new IllegalArgumentException("Missing endpoint in CCTDestination extras");
        }
        String str3 = split[1];
        if (str3.isEmpty()) {
            str3 = null;
        }
        return new dzj(str2, str3);
    }
}
