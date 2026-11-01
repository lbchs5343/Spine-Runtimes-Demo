package com.google.android.gms.internal.ads;

import g.hbt;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;

/* loaded from: classes3.dex */
public final class zzgwq implements zzgrn {

    /* renamed from: a, reason: collision with root package name */
    public final int f8650a;

    /* renamed from: b, reason: collision with root package name */
    public final hbt f8651b;

    /* renamed from: c, reason: collision with root package name */
    public final String f8652c;

    /* renamed from: d, reason: collision with root package name */
    public final Key f8653d;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public zzgwq(String str, Key key) throws GeneralSecurityException {
        char c2;
        int i;
        hbt hbtVar = new hbt(this);
        this.f8651b = hbtVar;
        if (!zzgmh.zza(2)) {
            throw new GeneralSecurityException("Can not use HMAC in FIPS-mode, as BoringCrypto module is not available.");
        }
        this.f8652c = str;
        this.f8653d = key;
        if (key.getEncoded().length < 16) {
            throw new InvalidAlgorithmParameterException("key size too small, need at least 16 bytes");
        }
        switch (str.hashCode()) {
            case -1823053428:
                if (str.equals("HMACSHA1")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 392315023:
                if (str.equals("HMACSHA224")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 392315118:
                if (str.equals("HMACSHA256")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 392316170:
                if (str.equals("HMACSHA384")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 392317873:
                if (str.equals("HMACSHA512")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0) {
            i = 20;
        } else if (c2 == 1) {
            i = 28;
        } else if (c2 == 2) {
            i = 32;
        } else if (c2 == 3) {
            i = 48;
        } else {
            if (c2 != 4) {
                throw new NoSuchAlgorithmException("unknown Hmac algorithm: ".concat(str));
            }
            i = 64;
        }
        this.f8650a = i;
        hbtVar.get();
    }

    @Override // com.google.android.gms.internal.ads.zzgrn
    public final byte[] zza(byte[] bArr, int i) throws GeneralSecurityException {
        if (i > this.f8650a) {
            throw new InvalidAlgorithmParameterException("tag size too big");
        }
        hbt hbtVar = this.f8651b;
        ((Mac) hbtVar.get()).update(bArr);
        return Arrays.copyOf(((Mac) hbtVar.get()).doFinal(), i);
    }
}
