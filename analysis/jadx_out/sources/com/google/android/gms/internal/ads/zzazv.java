package com.google.android.gms.internal.ads;

import g.agd;
import java.util.PriorityQueue;

/* loaded from: classes3.dex */
public final class zzazv {
    public static long a(String[] strArr, int i) {
        long zza = (zzazr.zza(strArr[0]) + 2147483647L) % 1073807359;
        for (int i2 = 1; i2 < i; i2++) {
            zza = (((zzazr.zza(strArr[i2]) + 2147483647L) % 1073807359) + ((zza * 16785407) % 1073807359)) % 1073807359;
        }
        return zza;
    }

    public static long b(int i, long j) {
        if (i == 1) {
            return j;
        }
        int i2 = i >> 1;
        long j2 = (j * j) % 1073807359;
        return (i & 1) == 0 ? b(i2, j2) % 1073807359 : ((b(i2, j2) % 1073807359) * j) % 1073807359;
    }

    public static String c(int i, int i2, String[] strArr) {
        int i3 = i2 + i;
        if (strArr.length < i3) {
            agd.d("Unable to construct shingle");
            return "";
        }
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i4 = i3 - 1;
            if (i >= i4) {
                sb.append(strArr[i4]);
                return sb.toString();
            }
            sb.append(strArr[i]);
            sb.append(' ');
            i++;
        }
    }

    public static void d(int i, long j, String str, int i2, PriorityQueue priorityQueue) {
        zzazu zzazuVar = new zzazu(i2, j, str);
        if ((priorityQueue.size() != i || (((zzazu) priorityQueue.peek()).f4654c <= i2 && ((zzazu) priorityQueue.peek()).f4652a <= j)) && !priorityQueue.contains(zzazuVar)) {
            priorityQueue.add(zzazuVar);
            if (priorityQueue.size() > i) {
                priorityQueue.poll();
            }
        }
    }

    public static void zzc(String[] strArr, int i, int i2, PriorityQueue priorityQueue) {
        int length = strArr.length;
        if (length < 6) {
            d(i, a(strArr, length), c(0, length, strArr), length, priorityQueue);
            return;
        }
        long a2 = a(strArr, 6);
        d(i, a2, c(0, 6, strArr), 6, priorityQueue);
        int i3 = 1;
        while (true) {
            int length2 = strArr.length;
            if (i3 >= length2 - 5) {
                return;
            }
            long zza = zzazr.zza(strArr[i3 - 1]);
            long zza2 = zzazr.zza(strArr[i3 + 5]);
            String c2 = c(i3, 6, strArr);
            a2 = (((zza2 + 2147483647L) % 1073807359) + (((((a2 + 1073807359) - ((((zza + 2147483647L) % 1073807359) * b(5, 16785407L)) % 1073807359)) % 1073807359) * 16785407) % 1073807359)) % 1073807359;
            d(i, a2, c2, length2, priorityQueue);
            i3++;
        }
    }
}
