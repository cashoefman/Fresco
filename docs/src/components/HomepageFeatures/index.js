import clsx from 'clsx';
import Heading from '@theme/Heading';
import styles from './styles.module.css';

const FeatureList = [
  {
    title: 'Built for SwiftUI',
    Svg: require('@site/static/img/puzzlepiece.svg').default,
    description: (
      <>
       Fresco is a powerful, intuitive design system specifically crafted to streamline your SwiftUI development workflow.
      </>
    ),
  },
  {
    title: 'Effortlessly Customizable',
    Svg: require('@site/static/img/slider.svg').default,
    description: (
      <>
        Quickly tailor components, colors, and typography to fit your brand, accelerating app design from idea to implementation.
      </>
    ),
  },
  {
    title: 'Open and Extensible',
    Svg: require('@site/static/img/person.svg').default,
    description: (
      <>
        Fresco is built on open standards, making it easy to extend and integrate seamlessly into your development ecosystem.
      </>
    ),
  },
];

function Feature({Svg, title, description}) {
  return (
    <div className={clsx('col col--4')}>
      <div className="text--center">
        <Svg className={styles.featureSvg} role="img" />
      </div>
      <div className="text--center padding-horiz--md">
        <Heading as="h3">{title}</Heading>
        <p>{description}</p>
      </div>
    </div>
  );
}

export default function HomepageFeatures() {
  return (
    <section className={styles.features}>
      <div className="container">
        <div className="row">
          {FeatureList.map((props, idx) => (
            <Feature key={idx} {...props} />
          ))}
        </div>
      </div>
    </section>
  );
}
