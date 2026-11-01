package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes3.dex */
public abstract class zzazn {

    /* renamed from: a, reason: collision with root package name */
    public static MessageDigest f4647a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f4648b = new Object();

    public final MessageDigest c() {
        synchronized (this.f4648b) {
            MessageDigest messageDigest = f4647a;
            if (messageDigest != null) {
                return messageDigest;
            }
            for (int i = 0; i < 2; i++) {
                try {
                    f4647a = MessageDigest.getInstance("MD5");
                } catch (NoSuchAlgorithmException unused) {
                }
            }
            return f4647a;
        }
    }
}
