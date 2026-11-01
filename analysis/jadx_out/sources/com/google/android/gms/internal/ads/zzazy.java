package com.google.android.gms.internal.ads;

import android.util.Base64OutputStream;
import g.agd;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class zzazy {

    /* renamed from: a, reason: collision with root package name */
    public final zzazw f4658a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4659b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4660c;

    public zzazy(int i, int i2, int i3) {
        this.f4659b = i;
        i2 = (i2 > 64 || i2 < 0) ? 64 : i2;
        if (i3 <= 0) {
            this.f4660c = 1;
        } else {
            this.f4660c = i3;
        }
        this.f4658a = new zzazw(i2);
    }

    public final String zza(ArrayList arrayList, ArrayList arrayList2) {
        int i;
        Collections.sort(arrayList2, new zzazx(this));
        HashSet hashSet = new HashSet();
        loop0: for (int i2 = 0; i2 < arrayList2.size(); i2++) {
            String[] split = Normalizer.normalize((CharSequence) arrayList.get(((zzazm) arrayList2.get(i2)).f4643b), Normalizer.Form.NFKC).toLowerCase(Locale.US).split("\n");
            if (split.length != 0) {
                for (int i3 = 0; i3 < split.length; i3++) {
                    String str = split[i3];
                    if (str.contains("'")) {
                        StringBuilder sb = new StringBuilder(str);
                        int i4 = 1;
                        boolean z = false;
                        while (true) {
                            int i5 = i4 + 2;
                            if (i5 > sb.length()) {
                                break;
                            }
                            if (sb.charAt(i4) == '\'') {
                                if (sb.charAt(i4 - 1) != ' ') {
                                    int i6 = i4 + 1;
                                    if ((sb.charAt(i6) == 's' || sb.charAt(i6) == 'S') && (i5 == sb.length() || sb.charAt(i5) == ' ')) {
                                        sb.insert(i4, ' ');
                                        i4 = i5;
                                        z = true;
                                    }
                                }
                                sb.setCharAt(i4, ' ');
                                z = true;
                            }
                            i4++;
                        }
                        String sb2 = z ? sb.toString() : null;
                        if (sb2 != null) {
                            str = sb2;
                        }
                    }
                    String[] zzb = zzazr.zzb(str, true);
                    int length = zzb.length;
                    int i7 = this.f4660c;
                    if (length >= i7) {
                        int i8 = 0;
                        while (true) {
                            int length2 = zzb.length;
                            i = this.f4659b;
                            if (i8 >= length2) {
                                break;
                            }
                            String str2 = "";
                            for (int i9 = 0; i9 < i7; i9++) {
                                int i10 = i8 + i9;
                                if (i10 >= zzb.length) {
                                    break;
                                }
                                if (i9 > 0) {
                                    str2 = str2.concat(" ");
                                }
                                str2 = str2.concat(String.valueOf(zzb[i10]));
                            }
                            hashSet.add(str2);
                            if (hashSet.size() >= i) {
                                break loop0;
                            }
                            i8++;
                        }
                        if (hashSet.size() >= i) {
                            break loop0;
                        }
                    }
                }
            }
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(4096);
        Base64OutputStream base64OutputStream = new Base64OutputStream(byteArrayOutputStream, 10);
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            try {
                base64OutputStream.write(this.f4658a.zzb((String) it.next()));
            } catch (IOException e2) {
                agd.f("Error while writing hash to byteStream", e2);
            }
        }
        try {
            base64OutputStream.close();
        } catch (IOException e3) {
            agd.f("HashManager: Unable to convert to Base64.", e3);
        }
        try {
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toString();
        } catch (IOException e4) {
            agd.f("HashManager: Unable to convert to Base64.", e4);
            return "";
        }
    }
}
