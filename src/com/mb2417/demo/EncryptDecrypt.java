package com.mb2417.demo;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

import org.apache.commons.codec.binary.Base64;

public class EncryptDecrypt {
	
	public String encryptDecrypt(String key, String initVector, String value)
			throws Exception {
			byte[] encrypted = null;
			try {
			IvParameterSpec iv = new IvParameterSpec(
			initVector.getBytes("UTF-8"));
			SecretKeySpec skeySpec = new SecretKeySpec(key.getBytes("UTF-8"),
			"AES");

			Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
			cipher.init(Cipher.ENCRYPT_MODE, skeySpec, iv);

			encrypted = cipher.doFinal(value.getBytes());

			return new String(Base64.encodeBase64(encrypted)); // DatatypeConverter.printBase64Binary(encrypted);
			} catch (Exception ex) {
			ex.printStackTrace();

			return "encrypt exception";
			}
			}

			public String decryptDecrypt(String key, String initVector, String encrypted)
			throws Exception {
			byte[] original = null, textEncrypted = null;
			try {
			IvParameterSpec iv = new IvParameterSpec(
			initVector.getBytes("UTF-8"));
			SecretKeySpec skeySpec = new SecretKeySpec(key.getBytes("UTF-8"),
			"AES");

			Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
			cipher.init(Cipher.DECRYPT_MODE, skeySpec, iv);

			original = cipher
			.doFinal(Base64.decodeBase64(encrypted.getBytes()));

			return new String(original);
			} catch (Exception ex) {
			ex.printStackTrace();
			return "decrypt exception";
			}
			}

}
