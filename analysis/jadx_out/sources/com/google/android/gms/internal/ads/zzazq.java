package com.google.android.gms.internal.ads;

import android.util.Base64OutputStream;
import g.agd;
import g.aqn;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;

/* loaded from: classes3.dex */
public final class zzazq {

    /* renamed from: a, reason: collision with root package name */
    public final int f4649a;

    /* renamed from: b, reason: collision with root package name */
    public final zzazs f4650b = new zzazs();

    public zzazq(int i) {
        this.f4649a = i;
    }

    public final String zza(ArrayList arrayList) {
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            sb.append(((String) arrayList.get(i)).toLowerCase(Locale.US));
            sb.append('\n');
        }
        String[] split = sb.toString().split("\n");
        if (split.length == 0) {
            return "";
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(4096);
        Base64OutputStream base64OutputStream = new Base64OutputStream(byteArrayOutputStream, 10);
        aqn aqnVar = new aqn(18);
        int i2 = this.f4649a;
        PriorityQueue priorityQueue = new PriorityQueue(i2, aqnVar);
        for (String str : split) {
            String[] zzb = zzazr.zzb(str, false);
            if (zzb.length != 0) {
                zzazv.zzc(zzb, i2, 6, priorityQueue);
            }
        }
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            try {
                base64OutputStream.write(this.f4650b.zzb(((zzazu) it.next()).f4653b));
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
