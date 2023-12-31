package com.tripleJ.gg88.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.client.builder.AwsClientBuilder;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;

@PropertySource("classpath:application.properties")
@Configuration
@EnableWebMvc
public class AmazonS3Configuration implements WebMvcConfigurer {

	@Value("${endPoint}")
	private String endPoint;
	
	@Value("${regionName}")
	private String regionName;
	
	@Value("${secretKey}")
	private String secretKey;
	
	@Value("${accessKey}")
	private String accessKey;
	
	@Bean
	public BasicAWSCredentials AwsCredentials() {
		BasicAWSCredentials AwsCreds = new BasicAWSCredentials(accessKey, secretKey);	
		return AwsCreds;
	}
	
	@Bean
	public AmazonS3 AwsS3Client() {
		
		AmazonS3 s3Builder = AmazonS3ClientBuilder.standard()
			    .withEndpointConfiguration(new AwsClientBuilder.EndpointConfiguration(endPoint, regionName))
			    .withCredentials(new AWSStaticCredentialsProvider(new BasicAWSCredentials(accessKey, secretKey)))
			    .withChunkedEncodingDisabled(true)
			    .build();

		return s3Builder;
	}
}
