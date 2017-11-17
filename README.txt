1. Register formatter has two steps. If not add conversion-service, will get 400 bad request
<bean id="conversionService"
		class="org.springframework.format.support.FormattingConversionServiceFactoryBean">
		<property name="formatters">
			<set>
				<bean class="edu.mum.formatter.RoleFormatter">
				</bean>
			</set>
		</property>
	</bean>
	
<mvc:annotation-driven conversion-service="conversionService" />

2. @ManyToMany(cascade = { CascadeType.ALL }) will get detached entity passed to persist exception when try to save User.
change to @ManyToMany(cascade = { CascadeType.MERGE }) solve the problem.